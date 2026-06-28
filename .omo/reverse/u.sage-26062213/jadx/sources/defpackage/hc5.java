package defpackage;

import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hc5 extends pk4 {
    public final kn1 E(yn2 yn2Var, String str, int i, yn2 yn2Var2) {
        Parcel parcelZza = zza();
        lv4.c(parcelZza, yn2Var);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        lv4.c(parcelZza, yn2Var2);
        Parcel parcelZzB = zzB(2, parcelZza);
        kn1 kn1VarE = yn2.E(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return kn1VarE;
    }

    public final kn1 F(yn2 yn2Var, String str, int i, yn2 yn2Var2) {
        Parcel parcelZza = zza();
        lv4.c(parcelZza, yn2Var);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        lv4.c(parcelZza, yn2Var2);
        Parcel parcelZzB = zzB(3, parcelZza);
        kn1 kn1VarE = yn2.E(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return kn1VarE;
    }
}
