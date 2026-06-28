package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ServiceConfigurationError;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t52 implements ne1 {
    public final /* synthetic */ int n;

    public /* synthetic */ t52(vn2 vn2Var) {
        this.n = 14;
    }

    @Override // defpackage.ne1
    public final Object a() {
        ServiceConfigurationError serviceConfigurationError;
        switch (this.n) {
            case 0:
                is3 is3Var = u52.a;
                return si.a;
            case 1:
                return cj.a;
            case 2:
                throw new IllegalStateException("CompositionLocal LocalLifecycleOwner not present");
            case 3:
                lc0 lc0Var = y62.a;
                return null;
            case 4:
                is3 is3Var2 = a72.a;
                return w13.E;
            case 5:
                throw new IllegalStateException("CompositionLocal LocalSavedStateRegistryOwner not present");
            case 6:
                lc0 lc0Var2 = c72.a;
                return null;
            case 7:
                is3 is3Var3 = wa2.a;
                return Boolean.FALSE;
            case 8:
                return new ua2(a80.e(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -1, 65535), new e54(), new nl3(), ee2.a);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new zc3();
            case 10:
                vq1 vq1Var = new vq1(0);
                vq1Var.a(y33.a(zh2.class), new z82(3));
                return vq1Var.c();
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                float f = zj2.a;
                return tp0.a;
            case 12:
                return b10.a;
            case 13:
                return n64.a;
            case 14:
                it3 it3Var = it3.S;
                gi3[] gi3VarArr = new gi3[0];
                if (zs3.I0("kotlin.Unit")) {
                    k21.f("Blank serial names are prohibited");
                    return null;
                }
                if ((it3Var == it3.P ? 1 : 0) == 0) {
                    j50 j50Var = new j50("kotlin.Unit");
                    return new ii3("kotlin.Unit", it3Var, j50Var.b.size(), ji.c0(gi3VarArr), j50Var);
                }
                k21.f("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
                return null;
            case 15:
                return new t10(new io2());
            case 16:
                return new or2();
            case 17:
                int i = ex2.a;
                return Boolean.FALSE;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                List listY0 = o70.y0((List) vi3.a.getValue(), new lh0(12));
                ArrayList arrayList = new ArrayList();
                int size = listY0.size();
                while (i < size) {
                    ((jo2) listY0.get(i)).getClass();
                    arrayList.add(new js2(new kl2(new t52(15)), y33.a(a84.class)));
                    i++;
                }
                return arrayList;
            case 19:
                List listY02 = o70.y0((List) vi3.b.getValue(), new lh0(13));
                ArrayList arrayList2 = new ArrayList();
                if (listY02.size() <= 0) {
                    return arrayList2;
                }
                listY02.get(0).getClass();
                mk0.b();
                return null;
            case 20:
                lc0 lc0Var3 = b93.a;
                return zf5.f;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return new gc3(new LinkedHashMap());
            case 22:
                is3 is3Var4 = kc3.a;
                return null;
            case ConnectionResult.API_DISABLED /* 23 */:
                return new lf3(0);
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                lc0 lc0Var4 = zg3.a;
                return null;
            case 25:
                try {
                    return k30.F(ci3.M(ci3.J(Arrays.asList(new jo2()).iterator())));
                } finally {
                }
            case 26:
                try {
                    return k30.F(ci3.M(ci3.J(Arrays.asList(new wn0[0]).iterator())));
                } finally {
                }
            case 27:
                ys3 ys3Var = ys3.a;
                return new t32(uy2.a);
            case 28:
                return new nl3();
            default:
                return new cw0(0.0f);
        }
    }

    public /* synthetic */ t52(int i) {
        this.n = i;
    }
}
