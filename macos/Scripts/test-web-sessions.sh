#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/../.."
swift build --package-path macos/Packages/AIQuotaAuth --scratch-path macos/.build/auth --product AIQuotaWebSessionProbe
python3 - <<'PY'
from pathlib import Path
import plistlib
import shutil
import subprocess
import tempfile
import uuid

parent = Path('artifacts/macos-web-session-probes')
parent.mkdir(parents=True, exist_ok=True)
output = Path(tempfile.mkdtemp(prefix='run-', dir=parent)).resolve()
contents = output / 'CookieProbe.app/Contents'
binary = contents / 'MacOS/AIQuotaWebSessionProbe'
binary.parent.mkdir(parents=True)
shutil.copy2('macos/.build/auth/debug/AIQuotaWebSessionProbe', binary)
with (contents / 'Info.plist').open('wb') as file:
    plistlib.dump({
        'CFBundleIdentifier': 'com.aiquota.validation.web-session-probe',
        'CFBundleName': 'AIQuotaCookieProbe',
        'CFBundleExecutable': binary.name,
        'CFBundlePackageType': 'APPL',
        'CFBundleVersion': '1',
        'LSUIElement': True,
    }, file)
identifiers = [str(uuid.uuid4()), str(uuid.uuid4())]
(output / 'profile-ids.txt').write_text('\n'.join(identifiers) + '\n')
print(f'Probe artifacts: {output}', flush=True)
# Each process uses the normal AppKit run loop and termination notification. Only the initial
# login simulation opens local HTML views. Background renewal must work without reopening them.
for mode in ['write', 'read', 'renew', 'read-renewed', 'expire', 'read-expired', 'retire-first', 'read-retired']:
    result = subprocess.run([str(binary), mode, *identifiers], capture_output=True, text=True, timeout=45)
    (output / f'{mode}.log').write_text(result.stdout + result.stderr)
    print(result.stdout, end='', flush=True)
    if result.returncode:
        print(result.stderr, end='', flush=True)
        raise SystemExit(result.returncode)
PY
