package com.google.android.gms.common.moduleinstall;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import defpackage.ow3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface ModuleInstallClient extends HasApiKey<Api.ApiOptions.NoOptions> {
    ow3 areModulesAvailable(OptionalModuleApi... optionalModuleApiArr);

    ow3 deferredInstall(OptionalModuleApi... optionalModuleApiArr);

    ow3 getInstallModulesIntent(OptionalModuleApi... optionalModuleApiArr);

    @ResultIgnorabilityUnspecified
    ow3 installModules(ModuleInstallRequest moduleInstallRequest);

    ow3 releaseModules(OptionalModuleApi... optionalModuleApiArr);

    @ResultIgnorabilityUnspecified
    ow3 unregisterListener(InstallStatusListener installStatusListener);
}
