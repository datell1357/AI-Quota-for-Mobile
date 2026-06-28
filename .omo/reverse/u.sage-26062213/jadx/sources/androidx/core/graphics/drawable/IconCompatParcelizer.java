package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.k21;
import defpackage.xa4;
import defpackage.ya4;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(xa4 xa4Var) {
        IconCompat iconCompat = new IconCompat();
        int i = iconCompat.a;
        if (xa4Var.e(1)) {
            i = ((ya4) xa4Var).e.readInt();
        }
        iconCompat.a = i;
        byte[] bArr = iconCompat.c;
        if (xa4Var.e(2)) {
            Parcel parcel = ((ya4) xa4Var).e;
            int i2 = parcel.readInt();
            if (i2 < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i2];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.c = bArr;
        iconCompat.d = xa4Var.f(iconCompat.d, 3);
        int i3 = iconCompat.e;
        if (xa4Var.e(4)) {
            i3 = ((ya4) xa4Var).e.readInt();
        }
        iconCompat.e = i3;
        int i4 = iconCompat.f;
        if (xa4Var.e(5)) {
            i4 = ((ya4) xa4Var).e.readInt();
        }
        iconCompat.f = i4;
        iconCompat.g = (ColorStateList) xa4Var.f(iconCompat.g, 6);
        String string = iconCompat.i;
        if (xa4Var.e(7)) {
            string = ((ya4) xa4Var).e.readString();
        }
        iconCompat.i = string;
        String string2 = iconCompat.j;
        if (xa4Var.e(8)) {
            string2 = ((ya4) xa4Var).e.readString();
        }
        iconCompat.j = string2;
        iconCompat.h = PorterDuff.Mode.valueOf(iconCompat.i);
        switch (iconCompat.a) {
            case -1:
                Parcelable parcelable = iconCompat.d;
                if (parcelable != null) {
                    iconCompat.b = parcelable;
                    return iconCompat;
                }
                k21.f("Invalid icon");
                return null;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.d;
                if (parcelable2 != null) {
                    iconCompat.b = parcelable2;
                    return iconCompat;
                }
                byte[] bArr3 = iconCompat.c;
                iconCompat.b = bArr3;
                iconCompat.a = 3;
                iconCompat.e = 0;
                iconCompat.f = bArr3.length;
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.c, Charset.forName("UTF-16"));
                iconCompat.b = str;
                if (iconCompat.a == 2 && iconCompat.j == null) {
                    iconCompat.j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.b = iconCompat.c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, xa4 xa4Var) {
        xa4Var.getClass();
        iconCompat.i = iconCompat.h.name();
        switch (iconCompat.a) {
            case -1:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 1:
            case 5:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 2:
                iconCompat.c = ((String) iconCompat.b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.c = (byte[]) iconCompat.b;
                break;
            case 4:
            case 6:
                iconCompat.c = iconCompat.b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.a;
        if (-1 != i) {
            xa4Var.h(1);
            ((ya4) xa4Var).e.writeInt(i);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            xa4Var.h(2);
            Parcel parcel = ((ya4) xa4Var).e;
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            xa4Var.h(3);
            ((ya4) xa4Var).e.writeParcelable(parcelable, 0);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            xa4Var.h(4);
            ((ya4) xa4Var).e.writeInt(i2);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            xa4Var.h(5);
            ((ya4) xa4Var).e.writeInt(i3);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            xa4Var.h(6);
            ((ya4) xa4Var).e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.i;
        if (str != null) {
            xa4Var.h(7);
            ((ya4) xa4Var).e.writeString(str);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            xa4Var.h(8);
            ((ya4) xa4Var).e.writeString(str2);
        }
    }
}
