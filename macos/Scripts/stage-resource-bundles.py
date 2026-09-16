#!/usr/bin/env python3
"""Copy generated dependency resources beside a test/CLI host, or into app Contents/Resources."""
import argparse
from pathlib import Path
import shutil

parser = argparse.ArgumentParser()
parser.add_argument("build_products", type=Path)
parser.add_argument("destination", type=Path)
args = parser.parse_args()
source = args.build_products.resolve(strict=True)
destination = args.destination.resolve(strict=True)
required = source / "CodexBar_CodexBarCore.bundle"
for resource in ("zai.js", "provider-plugin-prelude.js"):
    if not (required / resource).is_file():
        raise SystemExit(f"Missing required CodexBarCore resource: {resource}")
if destination == source:
    raise SystemExit("Destination must differ from build products")
for bundle in sorted(source.glob("*.bundle")):
    if bundle.name.endswith("Tests.bundle"):
        continue
    shutil.copytree(bundle, destination / bundle.name)
    print(f"Staged resource bundle: {bundle.name}")
