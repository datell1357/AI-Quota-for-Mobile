package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jx4 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<jx4> CREATOR = new av4(3);
    public final int n;
    public final String o;
    public final Intent p;

    public jx4(int i, String str, Intent intent) {
        this.n = i;
        this.o = str;
        this.p = intent;
    }

    public static jx4 Y(Activity activity) {
        return new jx4(activity.hashCode(), activity.getClass().getCanonicalName(), activity.getIntent());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jx4)) {
            return false;
        }
        jx4 jx4Var = (jx4) obj;
        return this.n == jx4Var.n && Objects.equals(this.o, jx4Var.o) && Objects.equals(this.p, jx4Var.p);
    }

    public final int hashCode() {
        return this.n;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.n);
        SafeParcelWriter.writeString(parcel, 2, this.o, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.p, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
