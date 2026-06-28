package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.api.client.googleapis.media.MediaHttpUploader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class nm2 {
    public static final cg2 a;

    static {
        cg2 cg2Var = sn2.a;
        a = new cg2();
    }

    public static final void a(md2 md2Var, int i, int i2) {
        if (!(md2Var instanceof kr0)) {
            b(md2Var, i & md2Var.p, i2);
            return;
        }
        kr0 kr0Var = (kr0) md2Var;
        int i3 = kr0Var.B;
        b(md2Var, i3 & i, i2);
        int i4 = (~i3) & i;
        for (md2 md2Var2 = kr0Var.C; md2Var2 != null; md2Var2 = md2Var2.s) {
            a(md2Var2, i4, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(md2 md2Var, int i, int i2) {
        if (i2 != 0 || md2Var.v0()) {
            if ((i & 2) != 0 && (md2Var instanceof oy1)) {
                ca.u((oy1) md2Var);
                if (i2 == 2) {
                    w80.P(md2Var, 2).a1();
                }
            }
            if ((i & 128) != 0 && i2 != 2) {
                w80.R(md2Var).E();
            }
            if ((4194304 & i) != 0 && i2 != 2) {
                w80.R(md2Var).W(false);
            }
            if ((i & 256) != 0 && (md2Var instanceof fh1)) {
                if (i2 == 1) {
                    xy1 xy1VarR = w80.R(md2Var);
                    xy1VarR.c0(xy1VarR.c0 + 1);
                } else if (i2 == 2) {
                    w80.R(md2Var).c0(r0.c0 - 1);
                }
                if (i2 != 2) {
                    xy1 xy1VarR2 = w80.R(md2Var);
                    if (xy1VarR2.c0 != 0 && !xy1VarR2.p() && !xy1VarR2.q() && !xy1VarR2.b0) {
                        q9 q9Var = (q9) az1.a(xy1VarR2);
                        xh1 xh1Var = q9Var.f0.e;
                        xh1Var.getClass();
                        if (xy1VarR2.c0 > 0) {
                            ((ug2) xh1Var.n).c(xy1VarR2);
                            xy1VarR2.b0 = true;
                        }
                        q9Var.I(null);
                    }
                }
            }
            if ((i & 4) != 0 && (md2Var instanceof jx0)) {
                kt4.Q((jx0) md2Var);
            }
            if ((i & 8) != 0 && (md2Var instanceof eh3)) {
                w80.R(md2Var).E = true;
            }
            if ((i & 64) != 0 && (md2Var instanceof xs2)) {
                bz1 bz1Var = w80.R((xs2) md2Var).T;
                bz1Var.p.D = true;
                q82 q82Var = bz1Var.q;
                if (q82Var != null) {
                    q82Var.J = true;
                }
            }
            if ((i & 2048) != 0 && (md2Var instanceof da1)) {
                da1 da1Var = (da1) md2Var;
                i20.b = null;
                da1Var.Q(i20.a);
                if (i20.b != null) {
                    md2 md2Var2 = (md2) da1Var;
                    if (!md2Var2.n.A) {
                        ar1.b("visitChildren called on an unattached node");
                    }
                    ug2 ug2Var = new ug2(new md2[16]);
                    md2 md2Var3 = md2Var2.n;
                    md2 md2Var4 = md2Var3.s;
                    if (md2Var4 == null) {
                        w80.c(ug2Var, md2Var3);
                    } else {
                        ug2Var.c(md2Var4);
                    }
                    while (true) {
                        int i3 = ug2Var.p;
                        if (i3 == 0) {
                            break;
                        }
                        md2 md2VarG = (md2) ug2Var.l(i3 - 1);
                        if ((md2VarG.q & 1024) == 0) {
                            w80.c(ug2Var, md2VarG);
                        } else {
                            while (true) {
                                if (md2VarG == null) {
                                    break;
                                }
                                if ((md2VarG.p & 1024) != 0) {
                                    ug2 ug2Var2 = null;
                                    while (md2VarG != null) {
                                        if (md2VarG instanceof ka1) {
                                            ka1 ka1Var = (ka1) md2VarG;
                                            w91 w91Var = (w91) ((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).d;
                                            if (w91Var.c.a(ka1Var)) {
                                                w91Var.a();
                                            }
                                        } else if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                            int i4 = 0;
                                            for (md2 md2Var5 = ((kr0) md2VarG).C; md2Var5 != null; md2Var5 = md2Var5.s) {
                                                if ((md2Var5.p & 1024) != 0) {
                                                    i4++;
                                                    if (i4 == 1) {
                                                        md2VarG = md2Var5;
                                                    } else {
                                                        if (ug2Var2 == null) {
                                                            ug2Var2 = new ug2(new md2[16]);
                                                        }
                                                        if (md2VarG != null) {
                                                            ug2Var2.c(md2VarG);
                                                            md2VarG = null;
                                                        }
                                                        ug2Var2.c(md2Var5);
                                                    }
                                                }
                                            }
                                            if (i4 == 1) {
                                            }
                                        }
                                        md2VarG = w80.g(ug2Var2);
                                    }
                                } else {
                                    md2VarG = md2VarG.s;
                                }
                            }
                        }
                    }
                }
            }
            if ((i & BlockstoreClient.MAX_SIZE) != 0 && (md2Var instanceof kq)) {
                kq kqVar = (kq) md2Var;
                w91 w91Var2 = (w91) ((dh) ((q9) w80.S(kqVar)).getFocusOwner()).d;
                if (w91Var2.d.a(kqVar)) {
                    w91Var2.a();
                }
            }
            if ((i & 2097152) != 0 && (md2Var instanceof jq1) && i2 == 2) {
                ((jq1) md2Var).x();
            }
        }
    }

    public static final void c(md2 md2Var) {
        if (!md2Var.A) {
            ar1.b("autoInvalidateUpdatedNode called on unattached node");
        }
        a(md2Var, -1, 0);
    }

    public static final int d(ld2 ld2Var) {
        int i = ld2Var instanceof pf0 ? 3 : 1;
        if (ld2Var instanceof ix0) {
            i |= 4;
        }
        if (ld2Var instanceof ch3) {
            i |= 8;
        }
        if (ld2Var instanceof fw2) {
            i |= 16;
        }
        if (ld2Var instanceof ce) {
            i |= 64;
        }
        return ld2Var instanceof xx ? 524288 | i : i;
    }

    public static final int e(md2 md2Var) {
        int i = md2Var.p;
        if (i != 0) {
            return i;
        }
        Class<?> cls = md2Var.getClass();
        cg2 cg2Var = a;
        int iD = cg2Var.d(cls);
        if (iD >= 0) {
            return cg2Var.c[iD];
        }
        int i2 = md2Var instanceof oy1 ? 3 : 1;
        if (md2Var instanceof jx0) {
            i2 |= 4;
        }
        if (md2Var instanceof eh3) {
            i2 |= 8;
        }
        if (md2Var instanceof cw2) {
            i2 |= 16;
        }
        if (md2Var instanceof pd2) {
            i2 |= 32;
        }
        if (md2Var instanceof xs2) {
            i2 |= 64;
        }
        if (md2Var instanceof ey1) {
            i2 |= 4194432;
        } else if (md2Var instanceof jb2) {
            i2 |= 128;
        }
        if (md2Var instanceof fh1) {
            i2 |= 256;
        }
        boolean z = md2Var instanceof ka1;
        if (z) {
            i2 |= 1024;
        }
        if (md2Var instanceof da1) {
            i2 |= 2048;
        }
        if (md2Var instanceof kq) {
            i2 |= BlockstoreClient.MAX_SIZE;
        }
        if (md2Var instanceof px1) {
            i2 |= 8192;
        }
        if (md2Var instanceof f9) {
            i2 |= 16384;
        }
        if (md2Var instanceof fc0) {
            i2 |= 32768;
        }
        if (md2Var instanceof b24) {
            i2 |= MediaHttpUploader.MINIMUM_CHUNK_SIZE;
        }
        if (md2Var instanceof xx) {
            i2 |= 524288;
        }
        if (z) {
            i2 |= 1048576;
        }
        if (md2Var instanceof jq1) {
            i2 |= 2097152;
        }
        if (md2Var instanceof zz1) {
            i2 |= 8388608;
        }
        cg2Var.g(i2, cls);
        return i2;
    }

    public static final int f(md2 md2Var) {
        if (!(md2Var instanceof kr0)) {
            return e(md2Var);
        }
        kr0 kr0Var = (kr0) md2Var;
        int iF = kr0Var.B;
        for (md2 md2Var2 = kr0Var.C; md2Var2 != null; md2Var2 = md2Var2.s) {
            iF |= f(md2Var2);
        }
        return iF;
    }

    public static final boolean g(int i) {
        return ((i & 128) != 0) | ((i & 4194304) != 0);
    }
}
