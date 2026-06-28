package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class my extends BroadcastReceiver {
    public final /* synthetic */ int a = 1;
    public final Object b;

    public my(r45 r45Var) {
        this.b = r45Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                context.getClass();
                intent.getClass();
                uv uvVar = (uv) obj;
                switch (uvVar.g) {
                    case 0:
                        String action = intent.getAction();
                        if (action != null) {
                            t72.g().c(vv.a, "Received ".concat(action));
                            switch (action.hashCode()) {
                                case -1886648615:
                                    if (action.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                                        uvVar.d(Boolean.FALSE);
                                        break;
                                    }
                                    break;
                                case -54942926:
                                    if (action.equals("android.os.action.DISCHARGING")) {
                                        uvVar.d(Boolean.FALSE);
                                        break;
                                    }
                                    break;
                                case 948344062:
                                    if (action.equals("android.os.action.CHARGING")) {
                                        uvVar.d(Boolean.TRUE);
                                        break;
                                    }
                                    break;
                                case 1019184907:
                                    if (action.equals("android.intent.action.ACTION_POWER_CONNECTED")) {
                                        uvVar.d(Boolean.TRUE);
                                        break;
                                    }
                                    break;
                            }
                        }
                        break;
                    case 1:
                        if (intent.getAction() != null) {
                            t72.g().c(wv.a, "Received " + intent.getAction());
                            String action2 = intent.getAction();
                            if (action2 != null) {
                                int iHashCode = action2.hashCode();
                                if (iHashCode != -1980154005) {
                                    if (iHashCode == 490310653 && action2.equals("android.intent.action.BATTERY_LOW")) {
                                        uvVar.d(Boolean.FALSE);
                                    }
                                    break;
                                } else if (action2.equals("android.intent.action.BATTERY_OKAY")) {
                                    uvVar.d(Boolean.TRUE);
                                    break;
                                }
                            }
                        }
                        break;
                    default:
                        if (intent.getAction() != null) {
                            t72.g().c(rs3.a, "Received " + intent.getAction());
                            String action3 = intent.getAction();
                            if (action3 != null) {
                                int iHashCode2 = action3.hashCode();
                                if (iHashCode2 != -1181163412) {
                                    if (iHashCode2 == -730838620 && action3.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                                        uvVar.d(Boolean.TRUE);
                                    }
                                    break;
                                } else if (action3.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                                    uvVar.d(Boolean.FALSE);
                                    break;
                                }
                            }
                        }
                        break;
                }
                break;
            default:
                r45 r45Var = (r45) obj;
                if (intent != null) {
                    String action4 = intent.getAction();
                    if (action4 != null) {
                        int iHashCode3 = action4.hashCode();
                        if (iHashCode3 != -1928239649) {
                            if (iHashCode3 == 1279883384 && action4.equals("com.google.android.gms.measurement.BATCHES_AVAILABLE")) {
                                a25 a25Var = r45Var.f;
                                r45.l(a25Var);
                                a25Var.n.a("[sgtm] App Receiver notified batches are available");
                                j45 j45Var = r45Var.g;
                                r45.l(j45Var);
                                j45Var.E(new o9(26, this));
                            }
                            break;
                        } else if (action4.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
                            er4.a();
                            if (r45Var.d.G(null, e05.P0)) {
                                a25 a25Var2 = r45Var.f;
                                r45.l(a25Var2);
                                a25Var2.n.a("App receiver notified triggers are available");
                                j45 j45Var2 = r45Var.g;
                                r45.l(j45Var2);
                                j45Var2.E(new o9(27, r45Var));
                                break;
                            }
                        }
                        a25 a25Var3 = r45Var.f;
                        r45.l(a25Var3);
                        a25Var3.i.a("App receiver called with unknown action");
                    } else {
                        a25 a25Var4 = r45Var.f;
                        r45.l(a25Var4);
                        a25Var4.i.a("App receiver called with null action");
                    }
                } else {
                    a25 a25Var5 = r45Var.f;
                    r45.l(a25Var5);
                    a25Var5.i.a("App receiver called with null intent");
                }
                break;
        }
    }

    public my(uv uvVar) {
        this.b = uvVar;
    }
}
