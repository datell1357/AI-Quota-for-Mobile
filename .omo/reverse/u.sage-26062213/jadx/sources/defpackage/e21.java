package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public enum e21 implements Parcelable {
    /* JADX INFO: Fake field, exist only in values array */
    EF7(9),
    /* JADX INFO: Fake field, exist only in values array */
    EF17(11),
    /* JADX INFO: Fake field, exist only in values array */
    EF27(18),
    /* JADX INFO: Fake field, exist only in values array */
    EF38(19),
    /* JADX INFO: Fake field, exist only in values array */
    EF49(20),
    /* JADX INFO: Fake field, exist only in values array */
    EF60(23),
    /* JADX INFO: Fake field, exist only in values array */
    EF71(27),
    /* JADX INFO: Fake field, exist only in values array */
    EF82(28),
    /* JADX INFO: Fake field, exist only in values array */
    EF94(29),
    /* JADX INFO: Fake field, exist only in values array */
    EF104(30),
    /* JADX INFO: Fake field, exist only in values array */
    EF115(35),
    /* JADX INFO: Fake field, exist only in values array */
    EF125(36);

    public static final Parcelable.Creator<e21> CREATOR = new av4(24);
    public final int n;

    e21(int i) {
        this.n = i;
    }

    public static e21 a(int i) throws c21 {
        for (e21 e21Var : values()) {
            if (i == e21Var.n) {
                return e21Var;
            }
        }
        Locale locale = Locale.US;
        throw new c21(xw1.q("Error code ", i, " is not supported"));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.n);
    }
}
