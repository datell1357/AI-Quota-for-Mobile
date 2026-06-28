package defpackage;

import android.os.Build;
import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.android.gms.common.api.Api;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u45 extends rn4 {
    private static final u45 zzaw;
    private static volatile xo4 zzax;
    private long zzA;
    private int zzB;
    private String zzC;
    private String zzD;
    private boolean zzE;
    private do4 zzF;
    private String zzG;
    private int zzH;
    private int zzI;
    private int zzJ;
    private String zzK;
    private long zzL;
    private long zzM;
    private String zzN;
    private String zzO;
    private int zzP;
    private String zzQ;
    private x45 zzR;
    private yn4 zzS;
    private long zzT;
    private long zzU;
    private String zzV;
    private String zzW;
    private int zzX;
    private boolean zzY;
    private String zzZ;
    private boolean zzaa;
    private h45 zzab;
    private String zzac;
    private do4 zzad;
    private String zzae;
    private long zzaf;
    private boolean zzag;
    private String zzah;
    private boolean zzai;
    private String zzaj;
    private int zzak;
    private String zzal;
    private x25 zzam;
    private int zzan;
    private o25 zzao;
    private String zzap;
    private f55 zzaq;
    private long zzar;
    private String zzas;
    private o35 zzat;
    private String zzau;
    private do4 zzav;
    private int zzb;
    private int zze;
    private int zzf;
    private do4 zzg;
    private do4 zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private String zzn;
    private String zzo;
    private String zzp;
    private String zzq;
    private int zzr;
    private String zzs;
    private String zzt;
    private String zzu;
    private long zzv;
    private long zzw;
    private String zzx;
    private boolean zzy;
    private String zzz;

    static {
        u45 u45Var = new u45();
        zzaw = u45Var;
        rn4.o(u45.class, u45Var);
    }

    public u45() {
        ap4 ap4Var = ap4.r;
        this.zzg = ap4Var;
        this.zzh = ap4Var;
        this.zzn = "";
        this.zzo = "";
        this.zzp = "";
        this.zzq = "";
        this.zzs = "";
        this.zzt = "";
        this.zzu = "";
        this.zzx = "";
        this.zzz = "";
        this.zzC = "";
        this.zzD = "";
        this.zzF = ap4Var;
        this.zzG = "";
        this.zzK = "";
        this.zzN = "";
        this.zzO = "";
        this.zzQ = "";
        this.zzS = sn4.r;
        this.zzV = "";
        this.zzW = "";
        this.zzZ = "";
        this.zzac = "";
        this.zzad = ap4Var;
        this.zzae = "";
        this.zzah = "";
        this.zzaj = "";
        this.zzal = "";
        this.zzap = "";
        this.zzas = "";
        this.zzau = "";
        this.zzav = ap4Var;
    }

    public static q45 Y() {
        return (q45) zzaw.j();
    }

    public static q45 Z(u45 u45Var) {
        pn4 pn4VarJ = zzaw.j();
        pn4VarJ.e(u45Var);
        return (q45) pn4VarJ;
    }

    public final boolean A() {
        return (this.zzb & 131072) != 0;
    }

    public final String A0() {
        return this.zzac;
    }

    public final /* synthetic */ void A1(long j) {
        this.zzb |= 16384;
        this.zzv = j;
    }

    public final boolean B() {
        return this.zzy;
    }

    public final boolean B0() {
        return (this.zze & 32768) != 0;
    }

    public final /* synthetic */ void B1() {
        this.zzb |= 32768;
        this.zzw = 161000L;
    }

    public final String C() {
        return this.zzz;
    }

    public final long C0() {
        return this.zzaf;
    }

    public final /* synthetic */ void C1(String str) {
        str.getClass();
        this.zzb |= 65536;
        this.zzx = str;
    }

    public final boolean D() {
        return (this.zzb & 524288) != 0;
    }

    public final boolean D0() {
        return this.zzag;
    }

    public final /* synthetic */ void D1() {
        this.zzb &= -65537;
        this.zzx = zzaw.zzx;
    }

    public final long E() {
        return this.zzA;
    }

    public final boolean E0() {
        return (this.zze & 131072) != 0;
    }

    public final /* synthetic */ void E1(boolean z) {
        this.zzb |= 131072;
        this.zzy = z;
    }

    public final boolean F() {
        return (this.zzb & 1048576) != 0;
    }

    public final String F0() {
        return this.zzah;
    }

    public final /* synthetic */ void F1() {
        this.zzb &= -131073;
        this.zzy = false;
    }

    public final int G() {
        return this.zzB;
    }

    public final boolean G0() {
        return (this.zze & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0;
    }

    public final /* synthetic */ void G1(String str) {
        str.getClass();
        this.zzb |= MediaHttpUploader.MINIMUM_CHUNK_SIZE;
        this.zzz = str;
    }

    public final String H() {
        return this.zzC;
    }

    public final boolean H0() {
        return this.zzai;
    }

    public final /* synthetic */ void H1() {
        this.zzb &= -262145;
        this.zzz = zzaw.zzz;
    }

    public final String I() {
        return this.zzD;
    }

    public final boolean I0() {
        return (this.zze & 524288) != 0;
    }

    public final /* synthetic */ void I1(long j) {
        this.zzb |= 524288;
        this.zzA = j;
    }

    public final boolean J() {
        return (this.zzb & 8388608) != 0;
    }

    public final String J0() {
        return this.zzaj;
    }

    public final /* synthetic */ void J1(int i) {
        this.zzb |= 1048576;
        this.zzB = i;
    }

    public final boolean K() {
        return this.zzE;
    }

    public final int K0() {
        return this.zzak;
    }

    public final /* synthetic */ void K1(String str) {
        this.zzb |= 2097152;
        this.zzC = str;
    }

    public final do4 L() {
        return this.zzF;
    }

    public final boolean L0() {
        return (this.zze & 4194304) != 0;
    }

    public final /* synthetic */ void L1() {
        this.zzb &= -2097153;
        this.zzC = zzaw.zzC;
    }

    public final String M() {
        return this.zzG;
    }

    public final x25 M0() {
        x25 x25Var = this.zzam;
        return x25Var == null ? x25.B() : x25Var;
    }

    public final /* synthetic */ void M1(String str) {
        str.getClass();
        this.zzb |= 4194304;
        this.zzD = str;
    }

    public final boolean N() {
        return (this.zzb & MediaHttpDownloader.MAXIMUM_CHUNK_SIZE) != 0;
    }

    public final boolean N0() {
        return (this.zze & 8388608) != 0;
    }

    public final /* synthetic */ void N1() {
        this.zzb |= 8388608;
        this.zzE = false;
    }

    public final int O() {
        return this.zzH;
    }

    public final int O0() {
        return this.zzan;
    }

    public final void O1(ArrayList arrayList) {
        do4 do4Var = this.zzF;
        if (!((tm4) do4Var).n) {
            this.zzF = to4.d(do4Var);
        }
        sm4.d(arrayList, this.zzF);
    }

    public final boolean P() {
        return (this.zzb & 536870912) != 0;
    }

    public final boolean P0() {
        return (this.zze & 16777216) != 0;
    }

    public final void P1() {
        this.zzF = ap4.r;
    }

    public final long Q() {
        return this.zzL;
    }

    public final o25 Q0() {
        o25 o25Var = this.zzao;
        return o25Var == null ? o25.Z() : o25Var;
    }

    public final /* synthetic */ void Q1(String str) {
        str.getClass();
        this.zzb |= 16777216;
        this.zzG = str;
    }

    public final boolean R() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final boolean R0() {
        return (this.zze & 67108864) != 0;
    }

    public final /* synthetic */ void R1(int i) {
        this.zzb |= MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        this.zzH = i;
    }

    public final String S() {
        return this.zzN;
    }

    public final f55 S0() {
        f55 f55Var = this.zzaq;
        return f55Var == null ? f55.v() : f55Var;
    }

    public final /* synthetic */ void S1() {
        this.zzb &= -268435457;
        this.zzK = zzaw.zzK;
    }

    public final boolean T() {
        return (this.zzb & 1) != 0;
    }

    public final int T0() {
        return this.zzf;
    }

    public final List T1() {
        return this.zzg;
    }

    public final boolean U() {
        return (this.zze & 134217728) != 0;
    }

    public final /* synthetic */ void U0(long j) {
        this.zzb |= 536870912;
        this.zzL = j;
    }

    public final void U1() {
        do4 do4Var = this.zzg;
        if (((tm4) do4Var).n) {
            return;
        }
        this.zzg = to4.d(do4Var);
    }

    public final long V() {
        return this.zzar;
    }

    public final /* synthetic */ void V0(String str) {
        str.getClass();
        this.zzb |= Integer.MIN_VALUE;
        this.zzN = str;
    }

    public final void V1() {
        do4 do4Var = this.zzh;
        if (((tm4) do4Var).n) {
            return;
        }
        this.zzh = to4.d(do4Var);
    }

    public final boolean W() {
        return (this.zze & 536870912) != 0;
    }

    public final /* synthetic */ void W0() {
        this.zzb &= Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzN = zzaw.zzN;
    }

    public final void W1(List list) {
        do4 do4Var = this.zzav;
        if (!((tm4) do4Var).n) {
            this.zzav = to4.d(do4Var);
        }
        sm4.d(list, this.zzav);
    }

    public final o35 X() {
        o35 o35Var = this.zzat;
        return o35Var == null ? o35.v() : o35Var;
    }

    public final /* synthetic */ void X0(int i) {
        this.zze |= 2;
        this.zzP = i;
    }

    public final int X1() {
        return this.zzg.size();
    }

    public final void Y0(List list) {
        RandomAccess randomAccess = this.zzS;
        if (!((tm4) randomAccess).n) {
            sn4 sn4Var = (sn4) randomAccess;
            int i = sn4Var.p;
            this.zzS = sn4Var.F(i + i);
        }
        sm4.d(list, this.zzS);
    }

    public final u35 Y1(int i) {
        return (u35) this.zzg.get(i);
    }

    public final /* synthetic */ void Z0(long j) {
        this.zze |= 16;
        this.zzT = j;
    }

    public final do4 Z1() {
        return this.zzh;
    }

    public final /* synthetic */ void a0() {
        this.zzb |= 1;
        this.zzf = 1;
    }

    public final /* synthetic */ void a1(long j) {
        this.zze |= 32;
        this.zzU = j;
    }

    public final int a2() {
        return this.zzh.size();
    }

    public final /* synthetic */ void b0(int i, u35 u35Var) {
        U1();
        this.zzg.set(i, u35Var);
    }

    public final /* synthetic */ void b1(String str) {
        this.zze |= 128;
        this.zzW = str;
    }

    public final h55 b2(int i) {
        return (h55) this.zzh.get(i);
    }

    public final /* synthetic */ void c0(u35 u35Var) {
        U1();
        this.zzg.add(u35Var);
    }

    public final /* synthetic */ void c1(String str) {
        str.getClass();
        this.zze |= 8192;
        this.zzac = str;
    }

    public final boolean c2() {
        return (this.zzb & 2) != 0;
    }

    public final /* synthetic */ void d0(Iterable iterable) {
        U1();
        sm4.d(iterable, this.zzg);
    }

    public final /* synthetic */ void d1() {
        this.zze &= -8193;
        this.zzac = zzaw.zzac;
    }

    public final long d2() {
        return this.zzi;
    }

    public final void e0() {
        this.zzg = ap4.r;
    }

    public final void e1(Set set) {
        do4 do4Var = this.zzad;
        if (!((tm4) do4Var).n) {
            this.zzad = to4.d(do4Var);
        }
        sm4.d(set, this.zzad);
    }

    public final boolean e2() {
        return (this.zzb & 4) != 0;
    }

    public final /* synthetic */ void f0(int i) {
        U1();
        this.zzg.remove(i);
    }

    public final /* synthetic */ void f1(String str) {
        str.getClass();
        this.zze |= 16384;
        this.zzae = str;
    }

    public final long f2() {
        return this.zzj;
    }

    public final /* synthetic */ void g0(int i, h55 h55Var) {
        V1();
        this.zzh.set(i, h55Var);
    }

    public final /* synthetic */ void g1(long j) {
        this.zze |= 32768;
        this.zzaf = j;
    }

    public final boolean g2() {
        return (this.zzb & 8) != 0;
    }

    public final /* synthetic */ void h0(h55 h55Var) {
        V1();
        this.zzh.add(h55Var);
    }

    public final /* synthetic */ void h1(boolean z) {
        this.zze |= 65536;
        this.zzag = z;
    }

    public final long h2() {
        return this.zzk;
    }

    public final /* synthetic */ void i0(int i) {
        V1();
        this.zzh.remove(i);
    }

    public final /* synthetic */ void i1(String str) {
        this.zze |= 131072;
        this.zzah = str;
    }

    public final boolean i2() {
        return (this.zzb & 16) != 0;
    }

    public final /* synthetic */ void j0(long j) {
        this.zzb |= 2;
        this.zzi = j;
    }

    public final /* synthetic */ void j1(boolean z) {
        this.zze |= MediaHttpUploader.MINIMUM_CHUNK_SIZE;
        this.zzai = z;
    }

    public final long j2() {
        return this.zzl;
    }

    public final /* synthetic */ void k0() {
        this.zzb &= -3;
        this.zzi = 0L;
    }

    public final /* synthetic */ void k1(String str) {
        str.getClass();
        this.zze |= 524288;
        this.zzaj = str;
    }

    public final boolean k2() {
        return (this.zzb & 32) != 0;
    }

    public final /* synthetic */ void l0(long j) {
        this.zzb |= 4;
        this.zzj = j;
    }

    public final /* synthetic */ void l1(int i) {
        this.zze |= 1048576;
        this.zzak = i;
    }

    public final long l2() {
        return this.zzm;
    }

    public final /* synthetic */ void m0(long j) {
        this.zzb |= 8;
        this.zzk = j;
    }

    public final /* synthetic */ void m1(x25 x25Var) {
        this.zzam = x25Var;
        this.zze |= 4194304;
    }

    public final String m2() {
        return this.zzn;
    }

    public final /* synthetic */ void n0(long j) {
        this.zzb |= 16;
        this.zzl = j;
    }

    public final /* synthetic */ void n1(int i) {
        this.zze |= 8388608;
        this.zzan = i;
    }

    public final String n2() {
        return this.zzo;
    }

    public final /* synthetic */ void o0() {
        this.zzb &= -17;
        this.zzl = 0L;
    }

    public final /* synthetic */ void o1(o25 o25Var) {
        this.zzao = o25Var;
        this.zze |= 16777216;
    }

    public final String o2() {
        return this.zzp;
    }

    public final /* synthetic */ void p0(long j) {
        this.zzb |= 32;
        this.zzm = j;
    }

    public final /* synthetic */ void p1(f55 f55Var) {
        this.zzaq = f55Var;
        this.zze |= 67108864;
    }

    public final String p2() {
        return this.zzq;
    }

    public final /* synthetic */ void q0() {
        this.zzb &= -33;
        this.zzm = 0L;
    }

    public final /* synthetic */ void q1(long j) {
        this.zze |= 134217728;
        this.zzar = j;
    }

    public final boolean q2() {
        return (this.zzb & 1024) != 0;
    }

    public final /* synthetic */ void r0() {
        this.zzb |= 64;
        this.zzn = "android";
    }

    public final /* synthetic */ void r1(o35 o35Var) {
        this.zzat = o35Var;
        this.zze |= 536870912;
    }

    public final int r2() {
        return this.zzr;
    }

    @Override // defpackage.rn4
    public final Object s(int i) {
        xo4 qn4Var;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new bp4(zzaw, "\u0004E\u0000\u0002\u0001YE\u0000\u0006\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5᠌(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.Cဂ/Dဇ0Gဈ1Hဇ2Iဈ3Jင4Kဈ5Lဉ6Mင7Oဉ8Pဈ9Qဉ:Rဂ;Sဈ<Vဉ=Xဈ>Y\u001b", new Object[]{"zzb", "zze", "zzf", "zzg", u35.class, "zzh", h55.class, "zzi", "zzj", "zzk", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzl", "zzE", "zzF", c35.class, "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", mm4.h, "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau", "zzav", ez4.class});
        }
        if (i2 == 3) {
            return new u45();
        }
        if (i2 == 4) {
            return new q45(zzaw);
        }
        if (i2 == 5) {
            return zzaw;
        }
        if (i2 != 6) {
            throw null;
        }
        xo4 xo4Var = zzax;
        if (xo4Var != null) {
            return xo4Var;
        }
        synchronized (u45.class) {
            try {
                qn4Var = zzax;
                if (qn4Var == null) {
                    qn4Var = new qn4(zzaw);
                    zzax = qn4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qn4Var;
    }

    public final /* synthetic */ void s0(String str) {
        str.getClass();
        this.zzb |= 128;
        this.zzo = str;
    }

    public final /* synthetic */ void s1(String str) {
        this.zze |= 1073741824;
        this.zzau = str;
    }

    public final String s2() {
        return this.zzs;
    }

    public final String t() {
        return this.zzt;
    }

    public final boolean t0() {
        return (this.zze & 2) != 0;
    }

    public final /* synthetic */ void t1() {
        String str = Build.MODEL;
        str.getClass();
        this.zzb |= 256;
        this.zzp = str;
    }

    public final String u() {
        return this.zzu;
    }

    public final int u0() {
        return this.zzP;
    }

    public final /* synthetic */ void u1() {
        this.zzb &= -257;
        this.zzp = zzaw.zzp;
    }

    public final boolean v() {
        return (this.zzb & 16384) != 0;
    }

    public final boolean v0() {
        return (this.zze & 16) != 0;
    }

    public final /* synthetic */ void v1(String str) {
        str.getClass();
        this.zzb |= 512;
        this.zzq = str;
    }

    public final long w() {
        return this.zzv;
    }

    public final long w0() {
        return this.zzT;
    }

    public final /* synthetic */ void w1(int i) {
        this.zzb |= 1024;
        this.zzr = i;
    }

    public final boolean x() {
        return (this.zzb & 32768) != 0;
    }

    public final boolean x0() {
        return (this.zze & 128) != 0;
    }

    public final /* synthetic */ void x1(String str) {
        str.getClass();
        this.zzb |= 2048;
        this.zzs = str;
    }

    public final long y() {
        return this.zzw;
    }

    public final String y0() {
        return this.zzW;
    }

    public final /* synthetic */ void y1(String str) {
        str.getClass();
        this.zzb |= BlockstoreClient.MAX_SIZE;
        this.zzt = str;
    }

    public final String z() {
        return this.zzx;
    }

    public final boolean z0() {
        return (this.zze & 8192) != 0;
    }

    public final /* synthetic */ void z1(String str) {
        str.getClass();
        this.zzb |= 8192;
        this.zzu = str;
    }
}
