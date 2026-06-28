package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class av4 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ av4(int i) {
        this.a = i;
    }

    public static void a(vb5 vb5Var, Parcel parcel) {
        int i = vb5Var.n;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i);
        SafeParcelWriter.writeString(parcel, 2, vb5Var.o, false);
        SafeParcelWriter.writeLong(parcel, 3, vb5Var.p);
        SafeParcelWriter.writeLongObject(parcel, 4, vb5Var.q, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, vb5Var.r, false);
        SafeParcelWriter.writeString(parcel, 7, vb5Var.s, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, vb5Var.t, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        long j = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z = false;
        int i5 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i6 = 0;
        String strCreateString = null;
        ArrayList arrayListCreateTypedList = null;
        ArrayList<Integer> arrayListCreateIntegerList = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        byte[] bArrCreateByteArray = null;
        ArrayList arrayListCreateTypedList2 = null;
        String strCreateString4 = null;
        byte[] bArrCreateByteArray2 = null;
        b65[] b65VarArr = null;
        String strCreateString5 = null;
        switch (this.a) {
            case 0:
                int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader) {
                    int header = SafeParcelReader.readHeader(parcel);
                    int fieldId = SafeParcelReader.getFieldId(header);
                    if (fieldId == 1) {
                        i = SafeParcelReader.readInt(parcel, header);
                    } else if (fieldId != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header);
                    } else {
                        strCreateString = SafeParcelReader.createString(parcel, header);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
                return new zu4(i, strCreateString);
            case 1:
                int iValidateObjectHeader2 = SafeParcelReader.validateObjectHeader(parcel);
                s94 s94Var = null;
                wy4 wy4Var = null;
                wj wjVar = null;
                k25 k25Var = null;
                String strCreateString6 = null;
                while (parcel.dataPosition() < iValidateObjectHeader2) {
                    int header2 = SafeParcelReader.readHeader(parcel);
                    int fieldId2 = SafeParcelReader.getFieldId(header2);
                    if (fieldId2 == 1) {
                        s94Var = (s94) SafeParcelReader.createParcelable(parcel, header2, s94.CREATOR);
                    } else if (fieldId2 == 2) {
                        wy4Var = (wy4) SafeParcelReader.createParcelable(parcel, header2, wy4.CREATOR);
                    } else if (fieldId2 == 3) {
                        wjVar = (wj) SafeParcelReader.createParcelable(parcel, header2, wj.CREATOR);
                    } else if (fieldId2 == 4) {
                        k25Var = (k25) SafeParcelReader.createParcelable(parcel, header2, k25.CREATOR);
                    } else if (fieldId2 != 5) {
                        SafeParcelReader.skipUnknownField(parcel, header2);
                    } else {
                        strCreateString6 = SafeParcelReader.createString(parcel, header2);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader2);
                return new vj(s94Var, wy4Var, wjVar, k25Var, strCreateString6);
            case 2:
                int iValidateObjectHeader3 = SafeParcelReader.validateObjectHeader(parcel);
                long j2 = 0;
                long j3 = 0;
                boolean z4 = false;
                Bundle bundleCreateBundle = null;
                String strCreateString7 = null;
                while (parcel.dataPosition() < iValidateObjectHeader3) {
                    int header3 = SafeParcelReader.readHeader(parcel);
                    int fieldId3 = SafeParcelReader.getFieldId(header3);
                    if (fieldId3 == 1) {
                        j2 = SafeParcelReader.readLong(parcel, header3);
                    } else if (fieldId3 == 2) {
                        j3 = SafeParcelReader.readLong(parcel, header3);
                    } else if (fieldId3 == 3) {
                        z4 = SafeParcelReader.readBoolean(parcel, header3);
                    } else if (fieldId3 == 7) {
                        bundleCreateBundle = SafeParcelReader.createBundle(parcel, header3);
                    } else if (fieldId3 != 8) {
                        SafeParcelReader.skipUnknownField(parcel, header3);
                    } else {
                        strCreateString7 = SafeParcelReader.createString(parcel, header3);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader3);
                return new ix4(j2, j3, z4, bundleCreateBundle, strCreateString7);
            case 3:
                int iValidateObjectHeader4 = SafeParcelReader.validateObjectHeader(parcel);
                Intent intent = null;
                while (parcel.dataPosition() < iValidateObjectHeader4) {
                    int header4 = SafeParcelReader.readHeader(parcel);
                    int fieldId4 = SafeParcelReader.getFieldId(header4);
                    if (fieldId4 == 1) {
                        i6 = SafeParcelReader.readInt(parcel, header4);
                    } else if (fieldId4 == 2) {
                        strCreateString5 = SafeParcelReader.createString(parcel, header4);
                    } else if (fieldId4 != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header4);
                    } else {
                        intent = (Intent) SafeParcelReader.createParcelable(parcel, header4, Intent.CREATOR);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader4);
                return new jx4(i6, strCreateString5, intent);
            case 4:
                int iValidateObjectHeader5 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader5) {
                    int header5 = SafeParcelReader.readHeader(parcel);
                    if (SafeParcelReader.getFieldId(header5) != 1) {
                        SafeParcelReader.skipUnknownField(parcel, header5);
                    } else {
                        z3 = SafeParcelReader.readBoolean(parcel, header5);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader5);
                return new wj(z3);
            case 5:
                int iValidateObjectHeader6 = SafeParcelReader.validateObjectHeader(parcel);
                byte[] bArrCreateByteArray3 = null;
                byte[] bArrCreateByteArray4 = null;
                while (parcel.dataPosition() < iValidateObjectHeader6) {
                    int header6 = SafeParcelReader.readHeader(parcel);
                    int fieldId5 = SafeParcelReader.getFieldId(header6);
                    if (fieldId5 == 1) {
                        bArrCreateByteArray3 = SafeParcelReader.createByteArray(parcel, header6);
                    } else if (fieldId5 != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header6);
                    } else {
                        bArrCreateByteArray4 = SafeParcelReader.createByteArray(parcel, header6);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader6);
                return new wy4(bArrCreateByteArray3 == null ? null : b25.h(bArrCreateByteArray3.length, bArrCreateByteArray3), bArrCreateByteArray4 != null ? b25.h(bArrCreateByteArray4.length, bArrCreateByteArray4) : null);
            case 6:
                int iValidateObjectHeader7 = SafeParcelReader.validateObjectHeader(parcel);
                byte[] bArrCreateByteArray5 = null;
                while (parcel.dataPosition() < iValidateObjectHeader7) {
                    int header7 = SafeParcelReader.readHeader(parcel);
                    int fieldId6 = SafeParcelReader.getFieldId(header7);
                    if (fieldId6 == 1) {
                        z2 = SafeParcelReader.readBoolean(parcel, header7);
                    } else if (fieldId6 != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header7);
                    } else {
                        bArrCreateByteArray5 = SafeParcelReader.createByteArray(parcel, header7);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader7);
                return new k25(z2, bArrCreateByteArray5 != null ? b25.h(bArrCreateByteArray5.length, bArrCreateByteArray5) : null);
            case 7:
                int iValidateObjectHeader8 = SafeParcelReader.validateObjectHeader(parcel);
                byte[] bArrCreateByteArray6 = null;
                byte[] bArrCreateByteArray7 = null;
                byte[] bArrCreateByteArray8 = null;
                byte[] bArrCreateByteArray9 = null;
                byte[] bArrCreateByteArray10 = null;
                while (parcel.dataPosition() < iValidateObjectHeader8) {
                    int header8 = SafeParcelReader.readHeader(parcel);
                    int fieldId7 = SafeParcelReader.getFieldId(header8);
                    if (fieldId7 == 2) {
                        bArrCreateByteArray6 = SafeParcelReader.createByteArray(parcel, header8);
                    } else if (fieldId7 == 3) {
                        bArrCreateByteArray7 = SafeParcelReader.createByteArray(parcel, header8);
                    } else if (fieldId7 == 4) {
                        bArrCreateByteArray8 = SafeParcelReader.createByteArray(parcel, header8);
                    } else if (fieldId7 == 5) {
                        bArrCreateByteArray9 = SafeParcelReader.createByteArray(parcel, header8);
                    } else if (fieldId7 != 6) {
                        SafeParcelReader.skipUnknownField(parcel, header8);
                    } else {
                        bArrCreateByteArray10 = SafeParcelReader.createByteArray(parcel, header8);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader8);
                return new bk(bArrCreateByteArray6, bArrCreateByteArray7, bArrCreateByteArray8, bArrCreateByteArray9, bArrCreateByteArray10);
            case 8:
                int iValidateObjectHeader9 = SafeParcelReader.validateObjectHeader(parcel);
                String[] strArrCreateStringArray = null;
                while (parcel.dataPosition() < iValidateObjectHeader9) {
                    int header9 = SafeParcelReader.readHeader(parcel);
                    int fieldId8 = SafeParcelReader.getFieldId(header9);
                    if (fieldId8 == 2) {
                        i5 = SafeParcelReader.readInt(parcel, header9);
                    } else if (fieldId8 == 3) {
                        b65VarArr = (b65[]) SafeParcelReader.createTypedArray(parcel, header9, b65.CREATOR);
                    } else if (fieldId8 != 4) {
                        SafeParcelReader.skipUnknownField(parcel, header9);
                    } else {
                        strArrCreateStringArray = SafeParcelReader.createStringArray(parcel, header9);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader9);
                return new r55(i5, b65VarArr, strArrCreateStringArray);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                int iValidateObjectHeader10 = SafeParcelReader.validateObjectHeader(parcel);
                long j4 = 0;
                boolean z5 = false;
                String strCreateString8 = null;
                String strCreateString9 = null;
                r55[] r55VarArr = null;
                byte[] bArrCreateByteArray11 = null;
                while (parcel.dataPosition() < iValidateObjectHeader10) {
                    int header10 = SafeParcelReader.readHeader(parcel);
                    switch (SafeParcelReader.getFieldId(header10)) {
                        case 2:
                            strCreateString8 = SafeParcelReader.createString(parcel, header10);
                            break;
                        case 3:
                            strCreateString9 = SafeParcelReader.createString(parcel, header10);
                            break;
                        case 4:
                            r55VarArr = (r55[]) SafeParcelReader.createTypedArray(parcel, header10, r55.CREATOR);
                            break;
                        case 5:
                            z5 = SafeParcelReader.readBoolean(parcel, header10);
                            break;
                        case 6:
                            bArrCreateByteArray11 = SafeParcelReader.createByteArray(parcel, header10);
                            break;
                        case 7:
                            j4 = SafeParcelReader.readLong(parcel, header10);
                            break;
                        default:
                            SafeParcelReader.skipUnknownField(parcel, header10);
                            break;
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader10);
                return new t55(strCreateString8, strCreateString9, r55VarArr, z5, bArrCreateByteArray11, j4);
            case 10:
                int iValidateObjectHeader11 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader11) {
                    int header11 = SafeParcelReader.readHeader(parcel);
                    if (SafeParcelReader.getFieldId(header11) != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header11);
                    } else {
                        bArrCreateByteArray2 = SafeParcelReader.createByteArray(parcel, header11);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader11);
                return new w55(bArrCreateByteArray2);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                int iValidateObjectHeader12 = SafeParcelReader.validateObjectHeader(parcel);
                String strCreateString10 = null;
                byte[] bArrCreateByteArray12 = null;
                byte[][] bArrCreateByteArrayArray = null;
                byte[][] bArrCreateByteArrayArray2 = null;
                byte[][] bArrCreateByteArrayArray3 = null;
                byte[][] bArrCreateByteArrayArray4 = null;
                int[] iArrCreateIntArray = null;
                byte[][] bArrCreateByteArrayArray5 = null;
                int[] iArrCreateIntArray2 = null;
                byte[][] bArrCreateByteArrayArray6 = null;
                while (parcel.dataPosition() < iValidateObjectHeader12) {
                    int header12 = SafeParcelReader.readHeader(parcel);
                    switch (SafeParcelReader.getFieldId(header12)) {
                        case 2:
                            strCreateString10 = SafeParcelReader.createString(parcel, header12);
                            break;
                        case 3:
                            bArrCreateByteArray12 = SafeParcelReader.createByteArray(parcel, header12);
                            break;
                        case 4:
                            bArrCreateByteArrayArray = SafeParcelReader.createByteArrayArray(parcel, header12);
                            break;
                        case 5:
                            bArrCreateByteArrayArray2 = SafeParcelReader.createByteArrayArray(parcel, header12);
                            break;
                        case 6:
                            bArrCreateByteArrayArray3 = SafeParcelReader.createByteArrayArray(parcel, header12);
                            break;
                        case 7:
                            bArrCreateByteArrayArray4 = SafeParcelReader.createByteArrayArray(parcel, header12);
                            break;
                        case 8:
                            iArrCreateIntArray = SafeParcelReader.createIntArray(parcel, header12);
                            break;
                        case ConnectionResult.SERVICE_INVALID /* 9 */:
                            bArrCreateByteArrayArray5 = SafeParcelReader.createByteArrayArray(parcel, header12);
                            break;
                        case 10:
                            iArrCreateIntArray2 = SafeParcelReader.createIntArray(parcel, header12);
                            break;
                        case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                            bArrCreateByteArrayArray6 = SafeParcelReader.createByteArrayArray(parcel, header12);
                            break;
                        default:
                            SafeParcelReader.skipUnknownField(parcel, header12);
                            break;
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader12);
                return new z55(strCreateString10, bArrCreateByteArray12, bArrCreateByteArrayArray, bArrCreateByteArrayArray2, bArrCreateByteArrayArray3, bArrCreateByteArrayArray4, iArrCreateIntArray, bArrCreateByteArrayArray5, iArrCreateIntArray2, bArrCreateByteArrayArray6);
            case 12:
                int iValidateObjectHeader13 = SafeParcelReader.validateObjectHeader(parcel);
                double d = 0.0d;
                long j5 = 0;
                boolean z6 = false;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                String strCreateString11 = null;
                String strCreateString12 = null;
                byte[] bArrCreateByteArray13 = null;
                while (parcel.dataPosition() < iValidateObjectHeader13) {
                    int header13 = SafeParcelReader.readHeader(parcel);
                    switch (SafeParcelReader.getFieldId(header13)) {
                        case 2:
                            strCreateString11 = SafeParcelReader.createString(parcel, header13);
                            break;
                        case 3:
                            j5 = SafeParcelReader.readLong(parcel, header13);
                            break;
                        case 4:
                            z6 = SafeParcelReader.readBoolean(parcel, header13);
                            break;
                        case 5:
                            d = SafeParcelReader.readDouble(parcel, header13);
                            break;
                        case 6:
                            strCreateString12 = SafeParcelReader.createString(parcel, header13);
                            break;
                        case 7:
                            bArrCreateByteArray13 = SafeParcelReader.createByteArray(parcel, header13);
                            break;
                        case 8:
                            i7 = SafeParcelReader.readInt(parcel, header13);
                            break;
                        case ConnectionResult.SERVICE_INVALID /* 9 */:
                            i8 = SafeParcelReader.readInt(parcel, header13);
                            break;
                        case 10:
                            i9 = SafeParcelReader.readInt(parcel, header13);
                            break;
                        default:
                            SafeParcelReader.skipUnknownField(parcel, header13);
                            break;
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader13);
                return new b65(strCreateString11, j5, z6, d, strCreateString12, bArrCreateByteArray13, i7, i8, i9);
            case 13:
                int iValidateObjectHeader14 = SafeParcelReader.validateObjectHeader(parcel);
                String strCreateString13 = null;
                b65 b65Var = null;
                while (parcel.dataPosition() < iValidateObjectHeader14) {
                    int header14 = SafeParcelReader.readHeader(parcel);
                    int fieldId9 = SafeParcelReader.getFieldId(header14);
                    if (fieldId9 == 2) {
                        strCreateString4 = SafeParcelReader.createString(parcel, header14);
                    } else if (fieldId9 == 3) {
                        strCreateString13 = SafeParcelReader.createString(parcel, header14);
                    } else if (fieldId9 == 4) {
                        b65Var = (b65) SafeParcelReader.createParcelable(parcel, header14, b65.CREATOR);
                    } else if (fieldId9 != 5) {
                        SafeParcelReader.skipUnknownField(parcel, header14);
                    } else {
                        z = SafeParcelReader.readBoolean(parcel, header14);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader14);
                return new d65(strCreateString4, strCreateString13, b65Var, z);
            case 14:
                int iValidateObjectHeader15 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader15) {
                    int header15 = SafeParcelReader.readHeader(parcel);
                    if (SafeParcelReader.getFieldId(header15) != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header15);
                    } else {
                        arrayListCreateTypedList2 = SafeParcelReader.createTypedList(parcel, header15, d65.CREATOR);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader15);
                return new g65(arrayListCreateTypedList2);
            case 15:
                int iValidateObjectHeader16 = SafeParcelReader.validateObjectHeader(parcel);
                int i10 = 0;
                while (parcel.dataPosition() < iValidateObjectHeader16) {
                    int header16 = SafeParcelReader.readHeader(parcel);
                    int fieldId10 = SafeParcelReader.getFieldId(header16);
                    if (fieldId10 == 1) {
                        i4 = SafeParcelReader.readInt(parcel, header16);
                    } else if (fieldId10 != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header16);
                    } else {
                        i10 = SafeParcelReader.readInt(parcel, header16);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader16);
                return new j65(i4, i10);
            case 16:
                int iValidateObjectHeader17 = SafeParcelReader.validateObjectHeader(parcel);
                byte[] bArrCreateByteArray14 = null;
                byte[] bArrCreateByteArray15 = null;
                String[] strArrCreateStringArray2 = null;
                while (parcel.dataPosition() < iValidateObjectHeader17) {
                    int header17 = SafeParcelReader.readHeader(parcel);
                    int fieldId11 = SafeParcelReader.getFieldId(header17);
                    if (fieldId11 == 2) {
                        bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header17);
                    } else if (fieldId11 == 3) {
                        bArrCreateByteArray14 = SafeParcelReader.createByteArray(parcel, header17);
                    } else if (fieldId11 == 4) {
                        bArrCreateByteArray15 = SafeParcelReader.createByteArray(parcel, header17);
                    } else if (fieldId11 != 5) {
                        SafeParcelReader.skipUnknownField(parcel, header17);
                    } else {
                        strArrCreateStringArray2 = SafeParcelReader.createStringArray(parcel, header17);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader17);
                return new ck(bArrCreateByteArray, bArrCreateByteArray14, bArrCreateByteArray15, strArrCreateStringArray2);
            case 17:
                int iValidateObjectHeader18 = SafeParcelReader.validateObjectHeader(parcel);
                int i11 = 0;
                while (parcel.dataPosition() < iValidateObjectHeader18) {
                    int header18 = SafeParcelReader.readHeader(parcel);
                    int fieldId12 = SafeParcelReader.getFieldId(header18);
                    if (fieldId12 == 2) {
                        i3 = SafeParcelReader.readInt(parcel, header18);
                    } else if (fieldId12 == 3) {
                        strCreateString3 = SafeParcelReader.createString(parcel, header18);
                    } else if (fieldId12 != 4) {
                        SafeParcelReader.skipUnknownField(parcel, header18);
                    } else {
                        i11 = SafeParcelReader.readInt(parcel, header18);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader18);
                return new dk(i3, strCreateString3, i11);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                int iValidateObjectHeader19 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader19) {
                    int header19 = SafeParcelReader.readHeader(parcel);
                    int fieldId13 = SafeParcelReader.getFieldId(header19);
                    if (fieldId13 == 1) {
                        strCreateString2 = SafeParcelReader.createString(parcel, header19);
                    } else if (fieldId13 == 2) {
                        j = SafeParcelReader.readLong(parcel, header19);
                    } else if (fieldId13 != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header19);
                    } else {
                        i2 = SafeParcelReader.readInt(parcel, header19);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader19);
                return new oa5(strCreateString2, i2, j);
            case 19:
                int iValidateObjectHeader20 = SafeParcelReader.validateObjectHeader(parcel);
                long j6 = 0;
                long j7 = 0;
                int i12 = 0;
                byte[] bArrCreateByteArray16 = null;
                String strCreateString14 = null;
                Bundle bundleCreateBundle2 = null;
                String strCreateString15 = null;
                while (parcel.dataPosition() < iValidateObjectHeader20) {
                    int header20 = SafeParcelReader.readHeader(parcel);
                    switch (SafeParcelReader.getFieldId(header20)) {
                        case 1:
                            j6 = SafeParcelReader.readLong(parcel, header20);
                            break;
                        case 2:
                            bArrCreateByteArray16 = SafeParcelReader.createByteArray(parcel, header20);
                            break;
                        case 3:
                            strCreateString14 = SafeParcelReader.createString(parcel, header20);
                            break;
                        case 4:
                            bundleCreateBundle2 = SafeParcelReader.createBundle(parcel, header20);
                            break;
                        case 5:
                            i12 = SafeParcelReader.readInt(parcel, header20);
                            break;
                        case 6:
                            j7 = SafeParcelReader.readLong(parcel, header20);
                            break;
                        case 7:
                            strCreateString15 = SafeParcelReader.createString(parcel, header20);
                            break;
                        default:
                            SafeParcelReader.skipUnknownField(parcel, header20);
                            break;
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader20);
                return new ua5(j6, bArrCreateByteArray16, strCreateString14, bundleCreateBundle2, i12, j7, strCreateString15);
            case 20:
                int iValidateObjectHeader21 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader21) {
                    int header21 = SafeParcelReader.readHeader(parcel);
                    if (SafeParcelReader.getFieldId(header21) != 1) {
                        SafeParcelReader.skipUnknownField(parcel, header21);
                    } else {
                        arrayListCreateIntegerList = SafeParcelReader.createIntegerList(parcel, header21);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader21);
                return new wa5(arrayListCreateIntegerList);
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                int iValidateObjectHeader22 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader22) {
                    int header22 = SafeParcelReader.readHeader(parcel);
                    if (SafeParcelReader.getFieldId(header22) != 1) {
                        SafeParcelReader.skipUnknownField(parcel, header22);
                    } else {
                        arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header22, ua5.CREATOR);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader22);
                return new za5(arrayListCreateTypedList);
            case 22:
                int iValidateObjectHeader23 = SafeParcelReader.validateObjectHeader(parcel);
                long j8 = 0;
                int i13 = 0;
                String strCreateString16 = null;
                Long longObject = null;
                Float floatObject = null;
                String strCreateString17 = null;
                String strCreateString18 = null;
                Double doubleObject = null;
                while (parcel.dataPosition() < iValidateObjectHeader23) {
                    int header23 = SafeParcelReader.readHeader(parcel);
                    switch (SafeParcelReader.getFieldId(header23)) {
                        case 1:
                            i13 = SafeParcelReader.readInt(parcel, header23);
                            break;
                        case 2:
                            strCreateString16 = SafeParcelReader.createString(parcel, header23);
                            break;
                        case 3:
                            j8 = SafeParcelReader.readLong(parcel, header23);
                            break;
                        case 4:
                            longObject = SafeParcelReader.readLongObject(parcel, header23);
                            break;
                        case 5:
                            floatObject = SafeParcelReader.readFloatObject(parcel, header23);
                            break;
                        case 6:
                            strCreateString17 = SafeParcelReader.createString(parcel, header23);
                            break;
                        case 7:
                            strCreateString18 = SafeParcelReader.createString(parcel, header23);
                            break;
                        case 8:
                            doubleObject = SafeParcelReader.readDoubleObject(parcel, header23);
                            break;
                        default:
                            SafeParcelReader.skipUnknownField(parcel, header23);
                            break;
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader23);
                return new vb5(i13, strCreateString16, j8, longObject, floatObject, strCreateString17, strCreateString18, doubleObject);
            case ConnectionResult.API_DISABLED /* 23 */:
                int iValidateObjectHeader24 = SafeParcelReader.validateObjectHeader(parcel);
                String strCreateString19 = "";
                String strCreateString20 = strCreateString19;
                String strCreateString21 = strCreateString20;
                String strCreateString22 = strCreateString21;
                int i14 = 100;
                long j9 = 0;
                long j10 = 0;
                long j11 = 0;
                long j12 = 0;
                long j13 = 0;
                long j14 = 0;
                long j15 = 0;
                long j16 = 0;
                boolean z7 = true;
                boolean z8 = true;
                boolean z9 = false;
                int i15 = 0;
                boolean z10 = false;
                boolean z11 = false;
                int i16 = 0;
                int i17 = 0;
                String strCreateString23 = null;
                String strCreateString24 = null;
                String strCreateString25 = null;
                String strCreateString26 = null;
                String strCreateString27 = null;
                String strCreateString28 = null;
                Boolean booleanObject = null;
                ArrayList<String> arrayListCreateStringList = null;
                String strCreateString29 = null;
                String strCreateString30 = null;
                long j17 = -2147483648L;
                while (parcel.dataPosition() < iValidateObjectHeader24) {
                    int header24 = SafeParcelReader.readHeader(parcel);
                    switch (SafeParcelReader.getFieldId(header24)) {
                        case 2:
                            strCreateString23 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 3:
                            strCreateString24 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 4:
                            strCreateString25 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 5:
                            strCreateString26 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 6:
                            j9 = SafeParcelReader.readLong(parcel, header24);
                            break;
                        case 7:
                            j10 = SafeParcelReader.readLong(parcel, header24);
                            break;
                        case 8:
                            strCreateString27 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case ConnectionResult.SERVICE_INVALID /* 9 */:
                            z7 = SafeParcelReader.readBoolean(parcel, header24);
                            break;
                        case 10:
                            z9 = SafeParcelReader.readBoolean(parcel, header24);
                            break;
                        case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                            j17 = SafeParcelReader.readLong(parcel, header24);
                            break;
                        case 12:
                            strCreateString28 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 13:
                        case 17:
                        case 19:
                        case 20:
                        case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        case 33:
                        default:
                            SafeParcelReader.skipUnknownField(parcel, header24);
                            break;
                        case 14:
                            j11 = SafeParcelReader.readLong(parcel, header24);
                            break;
                        case 15:
                            i15 = SafeParcelReader.readInt(parcel, header24);
                            break;
                        case 16:
                            z8 = SafeParcelReader.readBoolean(parcel, header24);
                            break;
                        case ConnectionResult.SERVICE_UPDATING /* 18 */:
                            z10 = SafeParcelReader.readBoolean(parcel, header24);
                            break;
                        case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                            booleanObject = SafeParcelReader.readBooleanObject(parcel, header24);
                            break;
                        case 22:
                            j12 = SafeParcelReader.readLong(parcel, header24);
                            break;
                        case ConnectionResult.API_DISABLED /* 23 */:
                            arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header24);
                            break;
                        case 25:
                            strCreateString19 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 26:
                            strCreateString20 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 27:
                            strCreateString29 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 28:
                            z11 = SafeParcelReader.readBoolean(parcel, header24);
                            break;
                        case 29:
                            j13 = SafeParcelReader.readLong(parcel, header24);
                            break;
                        case 30:
                            i14 = SafeParcelReader.readInt(parcel, header24);
                            break;
                        case 31:
                            strCreateString21 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 32:
                            i16 = SafeParcelReader.readInt(parcel, header24);
                            break;
                        case 34:
                            j14 = SafeParcelReader.readLong(parcel, header24);
                            break;
                        case 35:
                            strCreateString30 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 36:
                            strCreateString22 = SafeParcelReader.createString(parcel, header24);
                            break;
                        case 37:
                            j15 = SafeParcelReader.readLong(parcel, header24);
                            break;
                        case 38:
                            i17 = SafeParcelReader.readInt(parcel, header24);
                            break;
                        case 39:
                            j16 = SafeParcelReader.readLong(parcel, header24);
                            break;
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader24);
                return new vc5(strCreateString23, strCreateString24, strCreateString25, strCreateString26, j9, j10, strCreateString27, z7, z9, j17, strCreateString28, j11, i15, z8, z10, booleanObject, j12, arrayListCreateStringList, strCreateString19, strCreateString20, strCreateString29, z11, j13, i14, strCreateString21, i16, j14, strCreateString30, strCreateString22, j15, i17, j16);
            default:
                try {
                    return e21.a(parcel.readInt());
                } catch (c21 e) {
                    throw new IllegalArgumentException(e);
                }
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new zu4[i];
            case 1:
                return new vj[i];
            case 2:
                return new ix4[i];
            case 3:
                return new jx4[i];
            case 4:
                return new wj[i];
            case 5:
                return new wy4[i];
            case 6:
                return new k25[i];
            case 7:
                return new bk[i];
            case 8:
                return new r55[i];
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new t55[i];
            case 10:
                return new w55[i];
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return new z55[i];
            case 12:
                return new b65[i];
            case 13:
                return new d65[i];
            case 14:
                return new g65[i];
            case 15:
                return new j65[i];
            case 16:
                return new ck[i];
            case 17:
                return new dk[i];
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return new oa5[i];
            case 19:
                return new ua5[i];
            case 20:
                return new wa5[i];
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return new za5[i];
            case 22:
                return new vb5[i];
            case ConnectionResult.API_DISABLED /* 23 */:
                return new vc5[i];
            default:
                return new e21[i];
        }
    }
}
