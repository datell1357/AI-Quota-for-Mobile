#!/usr/bin/env python3
"""Check the real embedded extension and App Intents metadata after xcodebuild."""
import json
import plistlib
import subprocess
import sys
from pathlib import Path

app = Path(sys.argv[1]).resolve()
extension = app / 'Contents/PlugIns/AIQuotaWidgets.appex'
with (app / 'Contents/Info.plist').open('rb') as f:
    host_info = plistlib.load(f)
with (extension / 'Contents/Info.plist').open('rb') as f:
    info = plistlib.load(f)
assert info['NSExtension']['NSExtensionPointIdentifier'] == 'com.apple.widgetkit-extension'
assert info['CFBundleIdentifier'] == 'com.aiquota.macos.widgets'
assert info['CFBundleVersion'] == host_info['CFBundleVersion']
assert info['CFBundleShortVersionString'] == host_info['CFBundleShortVersionString']
assert info['LSMinimumSystemVersion'] == '14.0'
resources = extension / 'Contents/Resources'
metadata = json.loads((resources / 'Metadata.appintents/extract.actionsdata').read_text())
expected = {'ProviderWidgetIntent': 1, 'DashboardFourIntent': 4, 'DashboardSixIntent': 6,
            'BatteryTwoIntent': 2, 'BatteryFourIntent': 4, 'BatterySixIntent': 6}
assert set(metadata['actions']) == set(expected)
for name, maximum in expected.items():
    action = metadata['actions'][name]
    assert 'com.apple.link.systemProtocol.WidgetConfiguration' in action['systemProtocols']
    parameter, = action['parameters']
    if name == 'ProviderWidgetIntent':
        assert parameter['valueType']['entity']['wrapper']['typeName'] == 'WidgetAccountEntity'
    else:
        sizes = parameter['typeSpecificMetadata'][1]['collectionSizes']['sizes']['*']
        assert sizes == {'min': 0, 'max': maximum}
        assert parameter['valueType']['array']['wrapper']['memberValueType']['entity']['wrapper']['typeName'] == 'WidgetAccountEntity'
for language in ['en', 'ko']:
    assert (resources / (language + '.lproj/Localizable.strings')).is_file()
# Read the actual generated target graph, not just the generator's intended dependencies.
project = Path(__file__).resolve().parents[1] / 'AIQuota.xcodeproj/project.pbxproj'
objects = json.loads(subprocess.check_output(['plutil', '-convert', 'json', '-o', '-', str(project)]))['objects']
target = next(o for o in objects.values() if o.get('isa') == 'PBXNativeTarget' and o.get('name') == 'AIQuotaWidgets')
assert [objects[d]['productName'] for d in target['packageProductDependencies']] == ['AIQuotaCore']
assert not list(extension.rglob('*AIQuotaAuth*')) and not list(extension.rglob('*AIQuotaCollectors*'))
assert not list(extension.rglob('zai.js'))
binary = extension / 'Contents/MacOS' / info['CFBundleExecutable']
architectures = subprocess.check_output(['lipo', '-archs', str(binary)], text=True).strip().split()
print(json.dumps({'widgetKinds': 6, 'selectionCapacities': expected, 'locales': ['en', 'ko'],
                  'extensionPackages': ['AIQuotaCore'], 'architectures': architectures,
                  'minimumMacOS': info['LSMinimumSystemVersion'], 'validation': 'bundle and metadata only'}, indent=2))
