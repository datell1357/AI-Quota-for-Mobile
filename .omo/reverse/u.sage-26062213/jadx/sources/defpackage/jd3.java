package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.SizeF;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jd3 implements pe1 {
    public final /* synthetic */ int n;

    public /* synthetic */ jd3(int i) {
        this.n = i;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) throws Exception {
        int i = this.n;
        t64 t64Var = t64.a;
        boolean z = false;
        switch (i) {
            case 0:
                obj.getClass();
                return new uz0(((Integer) obj).intValue());
            case 1:
                obj.getClass();
                return new d32(((Integer) obj).intValue());
            case 2:
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                rx3 rx3Var = (nt1.g(obj2, Boolean.FALSE) || obj2 == null) ? null : (rx3) ((pe1) kd3.e.o).k(obj2);
                rx3Var.getClass();
                int i2 = rx3Var.a;
                Object obj3 = list.get(1);
                Boolean bool = obj3 != null ? (Boolean) obj3 : null;
                bool.getClass();
                return new sx3(i2, bool.booleanValue());
            case 3:
                obj.getClass();
                return new rx3(((Integer) obj).intValue());
            case 4:
                return new lf3(((Integer) obj).intValue());
            case 5:
                hw2 hw2Var = (hw2) obj;
                if (hw2Var != null && hw2Var.a == 2) {
                    z = true;
                }
                return Boolean.valueOf(!z);
            case 6:
                kx1[] kx1VarArr = nh3.a;
                ((ph3) obj).a(lh3.e, t64Var);
                return t64Var;
            case 7:
                return Boolean.valueOf(obj == null);
            case 8:
                y84 y84Var = (y84) obj;
                y84Var.getClass();
                return y84Var.name();
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                jd3 jd3Var = wo3.a;
                return t64Var;
            case 10:
                kx1[] kx1VarArr2 = nh3.a;
                oh3 oh3Var = lh3.m;
                kx1 kx1Var = nh3.a[5];
                ((ph3) obj).a(oh3Var, Boolean.TRUE);
                return t64Var;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return t64Var;
            case 12:
                Resources resources = (Resources) obj;
                resources.getClass();
                return Boolean.valueOf((resources.getConfiguration().uiMode & 48) == 32);
            case 13:
                jb3 jb3Var = (jb3) obj;
                jb3Var.getClass();
                pb3 pb3VarK0 = jb3Var.k0("SELECT DISTINCT work_spec_id FROM SystemIdInfo");
                try {
                    ArrayList arrayList = new ArrayList();
                    while (pb3VarK0.c0()) {
                        arrayList.add(pb3VarK0.o(0));
                        break;
                    }
                    return arrayList;
                } finally {
                    pb3VarK0.close();
                }
            case 14:
                pb3 pb3Var = (pb3) obj;
                pb3Var.getClass();
                return Boolean.valueOf(pb3Var.c0());
            case 15:
                pg3 pg3Var = (pg3) obj;
                long j = pg3Var.f;
                ip3 ip3Var = pg3Var.h;
                if (ip3Var != null) {
                    ip3Var.c(pg3Var, ht4.o, pg3Var.g);
                }
                long j2 = pg3Var.f;
                if (j != j2) {
                    ig3 ig3Var = pg3Var.o;
                    if (ig3Var != null) {
                        if (ig3Var.a > j2) {
                            pg3Var.B();
                        } else {
                            ig3Var.g = j2;
                            if (ig3Var.b == null) {
                                ig3Var.h = is0.W((1.0d - ((double) ig3Var.e.a(0))) * pg3Var.f);
                            }
                        }
                    } else if (j2 != 0) {
                        pg3Var.E();
                    }
                }
                return t64Var;
            case 16:
                pb3 pb3Var2 = (pb3) obj;
                pb3Var2.getClass();
                hk3 hk3Var = new hk3();
                while (pb3Var2.c0()) {
                    hk3Var.add(Integer.valueOf((int) pb3Var2.getLong(0)));
                }
                return is0.o(hk3Var);
            case 17:
                Context context = (Context) obj;
                context.getClass();
                FrameLayout frameLayout = new FrameLayout(context);
                frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                return frameLayout;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return Integer.valueOf(((Integer) obj).intValue() / 4);
            case 19:
                return Integer.valueOf(((Integer) obj).intValue() / 4);
            case 20:
                return Float.valueOf(((SizeF) obj).getWidth());
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return Float.valueOf(((SizeF) obj).getHeight());
            case 22:
                return new xe(((Float) obj).floatValue());
            case ConnectionResult.API_DISABLED /* 23 */:
                return new xe(((Integer) obj).intValue());
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return Integer.valueOf((int) ((xe) obj).a);
            case 25:
                return new xe(((cw0) obj).n);
            case 26:
                return new cw0(((xe) obj).a);
            case 27:
                ew0 ew0Var = (ew0) obj;
                return new ye(Float.intBitsToFloat((int) (ew0Var.a >> 32)), Float.intBitsToFloat((int) (4294967295L & ew0Var.a)));
            case 28:
                ye yeVar = (ye) obj;
                return new ew0((((long) Float.floatToRawIntBits(yeVar.b)) & 4294967295L) | (((long) Float.floatToRawIntBits(yeVar.a)) << 32));
            default:
                mn3 mn3Var = (mn3) obj;
                return new ye(Float.intBitsToFloat((int) (mn3Var.a >> 32)), Float.intBitsToFloat((int) (4294967295L & mn3Var.a)));
        }
    }
}
