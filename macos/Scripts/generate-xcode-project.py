#!/usr/bin/env python3
"""Deterministically generate the native host and WidgetKit extension project."""
import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
objects = {}

def uid(name):
    return hashlib.sha256(name.encode()).hexdigest()[:24].upper()

def obj(object_name, isa, **values):
    key = uid(object_name)
    objects[key] = dict(isa=isa, **values)
    return key

def file(name, path, kind):
    return obj(name, 'PBXFileReference', lastKnownFileType=kind, path=path, sourceTree='<group>')

source_files = (sorted(root.glob('App/**/*.swift')) + sorted(root.glob('Shared/**/*.swift')) + sorted(root.glob('WidgetSupport/**/*.swift'))
                + [root/'Widgets/AccountEntity.swift', root/'Widgets/WidgetIntents.swift'])
source_refs = []
source_build = []
for source in source_files:
    relative = str(source.relative_to(root))
    ref = file(relative, relative, 'sourcecode.swift')
    source_refs.append(ref)
    source_build.append(obj('build:' + relative, 'PBXBuildFile', fileRef=ref))
info = file('info', 'Configuration/App-Info.plist', 'text.plist.xml')
entitlements = file('entitlements', 'Configuration/App.entitlements', 'text.plist.entitlements')
product = obj('product', 'PBXFileReference', explicitFileType='wrapper.application', path='AI Quota.app', sourceTree='BUILT_PRODUCTS_DIR', includeInIndex='0')
products = obj('products', 'PBXGroup', children=[product], name='Products', sourceTree='<group>')
group = obj('group', 'PBXGroup', children=source_refs + [info, entitlements, products], sourceTree='<group>')
packages = []
dependencies = []
frameworks = []
for name in ['AIQuotaCore', 'AIQuotaAuth', 'AIQuotaCollectors']:
    package = obj('package:' + name, 'XCLocalSwiftPackageReference', relativePath='Packages/' + name)
    dependency = obj('dependency:' + name, 'XCSwiftPackageProductDependency', productName=name, package=package)
    packages.append(package)
    dependencies.append(dependency)
    frameworks.append(obj('framework:' + name, 'PBXBuildFile', productRef=dependency))
sources_phase = obj('sources-phase', 'PBXSourcesBuildPhase', buildActionMask='2147483647', files=source_build, runOnlyForDeploymentPostprocessing='0')
frameworks_phase = obj('frameworks-phase', 'PBXFrameworksBuildPhase', buildActionMask='2147483647', files=frameworks, runOnlyForDeploymentPostprocessing='0')
license_ref = file('licenses', 'Resources/ThirdPartyLicenses', 'folder')
objects[group]['children'].append(license_ref)
resource_build = obj('license-build', 'PBXBuildFile', fileRef=license_ref)
resources_phase = obj('resources-phase', 'PBXResourcesBuildPhase', buildActionMask='2147483647', files=[resource_build], runOnlyForDeploymentPostprocessing='0')
common = dict(MACOSX_DEPLOYMENT_TARGET='14.0', SDKROOT='macosx', SWIFT_VERSION='6.0', CLANG_ENABLE_MODULES='YES',
              SWIFT_STRICT_CONCURRENCY='complete', ENABLE_USER_SCRIPT_SANDBOXING='YES')
project_configs = []
app_configs = []
for name in ['Debug', 'Release']:
    project_configs.append(obj('project-config:' + name, 'XCBuildConfiguration', name=name, buildSettings=dict(common,
        SWIFT_OPTIMIZATION_LEVEL='-Onone' if name == 'Debug' else '-O',
        ONLY_ACTIVE_ARCH='YES' if name == 'Debug' else 'NO',
        DEBUG_INFORMATION_FORMAT='dwarf' if name == 'Debug' else 'dwarf-with-dsym',
        SWIFT_ACTIVE_COMPILATION_CONDITIONS='DEBUG' if name == 'Debug' else '')))
    app_configs.append(obj('app-config:' + name, 'XCBuildConfiguration', name=name, buildSettings=dict(
        PRODUCT_NAME='AI Quota', PRODUCT_BUNDLE_IDENTIFIER='com.aiquota.macos', INFOPLIST_FILE='Configuration/App-Info.plist',
        CODE_SIGN_ENTITLEMENTS='Configuration/App.entitlements', CODE_SIGN_STYLE='Automatic', DEVELOPMENT_TEAM='',
        ENABLE_HARDENED_RUNTIME='YES', COMBINE_HIDPI_IMAGES='YES', MARKETING_VERSION='0.1.0', CURRENT_PROJECT_VERSION='1',
        LD_RUNPATH_SEARCH_PATHS=['$(inherited)', '@executable_path/../Frameworks'],
        GENERATE_INFOPLIST_FILE='NO')))
project_config_list = obj('project-configs', 'XCConfigurationList', buildConfigurations=project_configs, defaultConfigurationIsVisible='0', defaultConfigurationName='Release')
app_config_list = obj('app-configs', 'XCConfigurationList', buildConfigurations=app_configs, defaultConfigurationIsVisible='0', defaultConfigurationName='Release')
target = obj('app', 'PBXNativeTarget', buildConfigurationList=app_config_list, buildPhases=[sources_phase, frameworks_phase, resources_phase], buildRules=[], dependencies=[], name='AIQuota', packageProductDependencies=dependencies, productName='AI Quota', productReference=product, productType='com.apple.product-type.application')

# The extension links display models only; no authentication, collector or plugin resources.
widget_sources = []
for source in sorted(root.glob('Widgets/**/*.swift')) + sorted(root.glob('WidgetSupport/**/*.swift')) + sorted(root.glob('Shared/**/*.swift')):
    relative = str(source.relative_to(root))
    ref = file(relative, relative, 'sourcecode.swift')
    if ref not in objects[group]['children']:
        objects[group]['children'].append(ref)
    widget_sources.append(obj('widget-build:' + relative, 'PBXBuildFile', fileRef=ref))
widget_product = obj('widget-product', 'PBXFileReference', explicitFileType='wrapper.app-extension', path='AIQuotaWidgets.appex', sourceTree='BUILT_PRODUCTS_DIR', includeInIndex='0')
objects[products]['children'].append(widget_product)
for path in ['Configuration/Widget-Info.plist', 'Configuration/Widget.entitlements']:
    objects[group]['children'].append(file(path, path, 'text.plist.xml'))
widget_configs = []
for name in ['Debug', 'Release']:
    widget_configs.append(obj('widget-config:' + name, 'XCBuildConfiguration', name=name, buildSettings=dict(
        PRODUCT_NAME='AIQuotaWidgets', PRODUCT_BUNDLE_IDENTIFIER='com.aiquota.macos.widgets',
        INFOPLIST_FILE='Configuration/Widget-Info.plist', CODE_SIGN_ENTITLEMENTS='Configuration/Widget.entitlements',
        CODE_SIGN_STYLE='Automatic', DEVELOPMENT_TEAM='', ENABLE_HARDENED_RUNTIME='YES', APPLICATION_EXTENSION_API_ONLY='YES',
        SKIP_INSTALL='YES', MARKETING_VERSION='0.1.0', CURRENT_PROJECT_VERSION='1', GENERATE_INFOPLIST_FILE='NO',
        LD_RUNPATH_SEARCH_PATHS=['$(inherited)', '@executable_path/../Frameworks', '@executable_path/../../../../Frameworks'])))
widget_config_list = obj('widget-configs', 'XCConfigurationList', buildConfigurations=widget_configs, defaultConfigurationIsVisible='0', defaultConfigurationName='Release')
widget_sources_phase = obj('widget-sources-phase', 'PBXSourcesBuildPhase', buildActionMask='2147483647', files=widget_sources, runOnlyForDeploymentPostprocessing='0')
widget_frameworks_phase = obj('widget-frameworks-phase', 'PBXFrameworksBuildPhase', buildActionMask='2147483647', files=[obj('widget-core-build', 'PBXBuildFile', productRef=dependencies[0])], runOnlyForDeploymentPostprocessing='0')
widget_resources_phase = obj('widget-resources-phase', 'PBXResourcesBuildPhase', buildActionMask='2147483647', files=[], runOnlyForDeploymentPostprocessing='0')
translations = []
for language in ['ko', 'en']:
    path = f'Resources/WidgetLocalization/{language}.lproj/Localizable.strings'
    translations.append(obj('widget-strings:' + language, 'PBXFileReference', lastKnownFileType='text.plist.strings', name=language, path=path, sourceTree='<group>'))
localized = obj('widget-localization', 'PBXVariantGroup', children=translations, name='Localizable.strings', sourceTree='<group>')
objects[group]['children'].append(localized)
objects[widget_resources_phase]['files'].append(obj('widget-localization-build', 'PBXBuildFile', fileRef=localized))
widget_target = obj('widgets', 'PBXNativeTarget', buildConfigurationList=widget_config_list, buildPhases=[widget_sources_phase, widget_frameworks_phase, widget_resources_phase], buildRules=[], dependencies=[], name='AIQuotaWidgets', packageProductDependencies=[dependencies[0]], productName='AIQuotaWidgets', productReference=widget_product, productType='com.apple.product-type.app-extension')
proxy = obj('widget-proxy', 'PBXContainerItemProxy', containerPortal=uid('project'), proxyType='1', remoteGlobalIDString=widget_target, remoteInfo='AIQuotaWidgets')
objects[target]['dependencies'].append(obj('widget-dependency', 'PBXTargetDependency', target=widget_target, targetProxy=proxy))
embed = obj('embed-widget', 'PBXBuildFile', fileRef=widget_product, settings={'ATTRIBUTES': ['RemoveHeadersOnCopy']})
objects[target]['buildPhases'].append(obj('embed-widget-phase', 'PBXCopyFilesBuildPhase', buildActionMask='2147483647', dstPath='', dstSubfolderSpec='13', files=[embed], name='Embed App Extensions', runOnlyForDeploymentPostprocessing='0'))
project = obj('project', 'PBXProject', attributes=dict(LastSwiftUpdateCheck='2660', LastUpgradeCheck='2660', TargetAttributes={t: dict(CreatedOnToolsVersion='26.6') for t in [target, widget_target]}), buildConfigurationList=project_config_list, compatibilityVersion='Xcode 14.0', developmentRegion='ko', hasScannedForEncodings='0', knownRegions=['ko', 'en', 'Base'], mainGroup=group, packageReferences=packages, productRefGroup=products, projectDirPath='', projectRoot='', targets=[target, widget_target])

def encode(value, indent=0):
    pad = '\t' * indent
    if isinstance(value, dict):
        return '{\n' + ''.join('\t'*(indent+1) + json.dumps(str(k)) + ' = ' + encode(v, indent+1) + ';\n' for k,v in value.items()) + pad + '}'
    if isinstance(value, list):
        return '(\n' + ''.join('\t'*(indent+1) + encode(v, indent+1) + ',\n' for v in value) + pad + ')'
    return json.dumps(str(value), ensure_ascii=False)

def write_if_changed(path, text):
    if not path.exists() or path.read_text() != text:
        path.write_text(text)

project_dir = root / 'AIQuota.xcodeproj'
project_dir.mkdir(exist_ok=True)
write_if_changed(project_dir/'project.pbxproj', '// !$*UTF8*$!\n' + encode(dict(archiveVersion='1', classes={}, objectVersion='56', objects=objects, rootObject=project)) + '\n')
scheme = f'''<?xml version="1.0" encoding="UTF-8"?>
<Scheme LastUpgradeVersion="2660" version="1.7">
 <BuildAction parallelizeBuildables="YES" buildImplicitDependencies="YES"><BuildActionEntries><BuildActionEntry buildForTesting="YES" buildForRunning="YES" buildForProfiling="YES" buildForArchiving="YES" buildForAnalyzing="YES"><BuildableReference BuildableIdentifier="primary" BlueprintIdentifier="{target}" BuildableName="AI Quota.app" BlueprintName="AIQuota" ReferencedContainer="container:AIQuota.xcodeproj"/></BuildActionEntry></BuildActionEntries></BuildAction>
 <TestAction buildConfiguration="Debug" selectedDebuggerIdentifier="Xcode.DebuggerFoundation.Debugger.LLDB" selectedLauncherIdentifier="Xcode.IDEFoundation.Launcher.LLDB" shouldUseLaunchSchemeArgsEnv="YES"/>
 <LaunchAction buildConfiguration="Debug" selectedDebuggerIdentifier="Xcode.DebuggerFoundation.Debugger.LLDB" selectedLauncherIdentifier="Xcode.IDEFoundation.Launcher.LLDB" launchStyle="0" useCustomWorkingDirectory="NO" ignoresPersistentStateOnLaunch="NO" debugDocumentVersioning="YES" debugServiceExtension="internal" allowLocationSimulation="YES"><BuildableProductRunnable runnableDebuggingMode="0"><BuildableReference BuildableIdentifier="primary" BlueprintIdentifier="{target}" BuildableName="AI Quota.app" BlueprintName="AIQuota" ReferencedContainer="container:AIQuota.xcodeproj"/></BuildableProductRunnable></LaunchAction>
 <ProfileAction buildConfiguration="Release" shouldUseLaunchSchemeArgsEnv="YES" savedToolIdentifier="" useCustomWorkingDirectory="NO" debugDocumentVersioning="YES"/>
 <AnalyzeAction buildConfiguration="Debug"/>
 <ArchiveAction buildConfiguration="Release" revealArchiveInOrganizer="YES"/>
</Scheme>
'''
scheme_dir = project_dir/'xcshareddata/xcschemes'
scheme_dir.mkdir(parents=True, exist_ok=True)
write_if_changed(scheme_dir/'AIQuota.xcscheme', scheme)
print('Generated AIQuota.xcodeproj with', len(source_refs), 'Swift source files')
