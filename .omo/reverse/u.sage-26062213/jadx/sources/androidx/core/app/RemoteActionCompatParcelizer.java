package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.xa4;
import defpackage.ya4;
import defpackage.za4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(xa4 xa4Var) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        za4 za4VarG = remoteActionCompat.a;
        boolean z = true;
        if (xa4Var.e(1)) {
            za4VarG = xa4Var.g();
        }
        remoteActionCompat.a = (IconCompat) za4VarG;
        CharSequence charSequence = remoteActionCompat.b;
        if (xa4Var.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((ya4) xa4Var).e);
        }
        remoteActionCompat.b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.c;
        if (xa4Var.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((ya4) xa4Var).e);
        }
        remoteActionCompat.c = charSequence2;
        remoteActionCompat.d = (PendingIntent) xa4Var.f(remoteActionCompat.d, 4);
        boolean z2 = remoteActionCompat.e;
        if (xa4Var.e(5)) {
            z2 = ((ya4) xa4Var).e.readInt() != 0;
        }
        remoteActionCompat.e = z2;
        boolean z3 = remoteActionCompat.f;
        if (!xa4Var.e(6)) {
            z = z3;
        } else if (((ya4) xa4Var).e.readInt() == 0) {
            z = false;
        }
        remoteActionCompat.f = z;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, xa4 xa4Var) {
        xa4Var.getClass();
        IconCompat iconCompat = remoteActionCompat.a;
        xa4Var.h(1);
        xa4Var.i(iconCompat);
        CharSequence charSequence = remoteActionCompat.b;
        xa4Var.h(2);
        Parcel parcel = ((ya4) xa4Var).e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.c;
        xa4Var.h(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.d;
        xa4Var.h(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z = remoteActionCompat.e;
        xa4Var.h(5);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = remoteActionCompat.f;
        xa4Var.h(6);
        parcel.writeInt(z2 ? 1 : 0);
    }
}
