package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f05 extends gu4 implements n05 {
    public f05(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // defpackage.n05
    public final void A(vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        G(18, parcelF);
    }

    @Override // defpackage.n05
    public final void B(vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        G(4, parcelF);
    }

    @Override // defpackage.n05
    public final void C(vc5 vc5Var, wa5 wa5Var, d15 d15Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        ku4.b(parcelF, wa5Var);
        ku4.c(parcelF, d15Var);
        G(29, parcelF);
    }

    @Override // defpackage.n05
    public final byte[] D(String str, bu4 bu4Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, bu4Var);
        parcelF.writeString(str);
        Parcel parcelE = E(9, parcelF);
        byte[] bArrCreateByteArray = parcelE.createByteArray();
        parcelE.recycle();
        return bArrCreateByteArray;
    }

    @Override // defpackage.n05
    public final void b(vc5 vc5Var, Bundle bundle, v05 v05Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        ku4.b(parcelF, bundle);
        ku4.c(parcelF, v05Var);
        G(31, parcelF);
    }

    @Override // defpackage.n05
    public final List c(String str, String str2, String str3, boolean z) {
        Parcel parcelF = F();
        parcelF.writeString(null);
        parcelF.writeString(str2);
        parcelF.writeString(str3);
        ClassLoader classLoader = ku4.a;
        parcelF.writeInt(z ? 1 : 0);
        Parcel parcelE = E(15, parcelF);
        ArrayList arrayListCreateTypedArrayList = parcelE.createTypedArrayList(vb5.CREATOR);
        parcelE.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.n05
    public final void e(vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        G(25, parcelF);
    }

    @Override // defpackage.n05
    public final List g(String str, String str2, vc5 vc5Var) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        parcelF.writeString(str2);
        ku4.b(parcelF, vc5Var);
        Parcel parcelE = E(16, parcelF);
        ArrayList arrayListCreateTypedArrayList = parcelE.createTypedArrayList(fq4.CREATOR);
        parcelE.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.n05
    public final void h(vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        G(27, parcelF);
    }

    @Override // defpackage.n05
    public final void j(vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        G(20, parcelF);
    }

    @Override // defpackage.n05
    public final List k(String str, String str2, boolean z, vc5 vc5Var) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        parcelF.writeString(str2);
        ClassLoader classLoader = ku4.a;
        parcelF.writeInt(z ? 1 : 0);
        ku4.b(parcelF, vc5Var);
        Parcel parcelE = E(14, parcelF);
        ArrayList arrayListCreateTypedArrayList = parcelE.createTypedArrayList(vb5.CREATOR);
        parcelE.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.n05
    public final void m(vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        G(6, parcelF);
    }

    @Override // defpackage.n05
    public final void n(vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        G(26, parcelF);
    }

    @Override // defpackage.n05
    public final void o(vb5 vb5Var, vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vb5Var);
        ku4.b(parcelF, vc5Var);
        G(2, parcelF);
    }

    @Override // defpackage.n05
    public final void p(long j, String str, String str2, String str3) {
        Parcel parcelF = F();
        parcelF.writeLong(j);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        parcelF.writeString(str3);
        G(10, parcelF);
    }

    @Override // defpackage.n05
    public final void q(fq4 fq4Var, vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, fq4Var);
        ku4.b(parcelF, vc5Var);
        G(12, parcelF);
    }

    @Override // defpackage.n05
    public final void r(bu4 bu4Var, vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, bu4Var);
        ku4.b(parcelF, vc5Var);
        G(1, parcelF);
    }

    @Override // defpackage.n05
    public final void s(vc5 vc5Var, po4 po4Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        ku4.b(parcelF, po4Var);
        G(30, parcelF);
    }

    @Override // defpackage.n05
    public final String t(vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        Parcel parcelE = E(11, parcelF);
        String string = parcelE.readString();
        parcelE.recycle();
        return string;
    }

    @Override // defpackage.n05
    public final List v(String str, String str2, String str3) {
        Parcel parcelF = F();
        parcelF.writeString(null);
        parcelF.writeString(str2);
        parcelF.writeString(str3);
        Parcel parcelE = E(17, parcelF);
        ArrayList arrayListCreateTypedArrayList = parcelE.createTypedArrayList(fq4.CREATOR);
        parcelE.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.n05
    public final ms4 w(vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, vc5Var);
        Parcel parcelE = E(21, parcelF);
        ms4 ms4Var = (ms4) ku4.a(parcelE, ms4.CREATOR);
        parcelE.recycle();
        return ms4Var;
    }

    @Override // defpackage.n05
    public final void x(Bundle bundle, vc5 vc5Var) {
        Parcel parcelF = F();
        ku4.b(parcelF, bundle);
        ku4.b(parcelF, vc5Var);
        G(19, parcelF);
    }
}
