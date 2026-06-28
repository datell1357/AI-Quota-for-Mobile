package defpackage;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.versionedparcelable.ParcelImpl;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.zat;
import com.google.android.gms.common.internal.zav;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d6 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ d6(int i) {
        this.a = i;
    }

    public static void a(bu4 bu4Var, Parcel parcel, int i) {
        String str = bu4Var.n;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, str, false);
        SafeParcelWriter.writeParcelable(parcel, 3, bu4Var.o, i, false);
        SafeParcelWriter.writeString(parcel, 4, bu4Var.p, false);
        SafeParcelWriter.writeLong(parcel, 5, bu4Var.q);
        SafeParcelWriter.writeLong(parcel, 6, bu4Var.r);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int i = 0;
        Bundle bundleCreateBundle = null;
        ArrayList arrayListCreateTypedList = null;
        String strCreateString = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        String strCreateString4 = null;
        String strCreateString5 = null;
        Bundle bundleCreateBundle2 = null;
        ConnectionResult connectionResult = null;
        zat zatVar = null;
        ArrayList<String> arrayListCreateStringList = null;
        Intent intent = null;
        switch (this.a) {
            case 0:
                parcel.getClass();
                return new e6(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
            case 1:
                return new dq(parcel);
            case 2:
                return new eq(parcel);
            case 3:
                return new mp0(parcel.readInt());
            case 4:
                ed1 ed1Var = new ed1();
                ed1Var.n = parcel.readString();
                ed1Var.o = parcel.readInt();
                return ed1Var;
            case 5:
                jd1 jd1Var = new jd1();
                jd1Var.r = null;
                jd1Var.s = new ArrayList();
                jd1Var.t = new ArrayList();
                jd1Var.n = parcel.createStringArrayList();
                jd1Var.o = parcel.createStringArrayList();
                jd1Var.p = (dq[]) parcel.createTypedArray(dq.CREATOR);
                jd1Var.q = parcel.readInt();
                jd1Var.r = parcel.readString();
                jd1Var.s = parcel.createStringArrayList();
                jd1Var.t = parcel.createTypedArrayList(eq.CREATOR);
                jd1Var.f149u = parcel.createTypedArrayList(ed1.CREATOR);
                return jd1Var;
            case 6:
                return new od1(parcel);
            case 7:
                parcel.getClass();
                Parcelable parcelable = parcel.readParcelable(IntentSender.class.getClassLoader());
                parcelable.getClass();
                return new us1((IntentSender) parcelable, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
            case 8:
                bl2 bl2Var = new bl2(parcel);
                bl2Var.n = parcel.readInt();
                return bl2Var;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new ParcelImpl(parcel);
            case 10:
                return new ss2(parcel.readFloat());
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return new ts2(parcel.readInt());
            case 12:
                return new us2(parcel.readLong());
            case 13:
                int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
                int i2 = 0;
                while (parcel.dataPosition() < iValidateObjectHeader) {
                    int header = SafeParcelReader.readHeader(parcel);
                    int fieldId = SafeParcelReader.getFieldId(header);
                    if (fieldId == 1) {
                        i = SafeParcelReader.readInt(parcel, header);
                    } else if (fieldId == 2) {
                        i2 = SafeParcelReader.readInt(parcel, header);
                    } else if (fieldId != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header);
                    } else {
                        intent = (Intent) SafeParcelReader.createParcelable(parcel, header, Intent.CREATOR);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
                return new ji4(i, i2, intent);
            case 14:
                int iValidateObjectHeader2 = SafeParcelReader.validateObjectHeader(parcel);
                String strCreateString6 = null;
                while (parcel.dataPosition() < iValidateObjectHeader2) {
                    int header2 = SafeParcelReader.readHeader(parcel);
                    int fieldId2 = SafeParcelReader.getFieldId(header2);
                    if (fieldId2 == 1) {
                        arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header2);
                    } else if (fieldId2 != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header2);
                    } else {
                        strCreateString6 = SafeParcelReader.createString(parcel, header2);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader2);
                return new wi4(strCreateString6, arrayListCreateStringList);
            case 15:
                int iValidateObjectHeader3 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader3) {
                    int header3 = SafeParcelReader.readHeader(parcel);
                    int fieldId3 = SafeParcelReader.getFieldId(header3);
                    if (fieldId3 == 1) {
                        i = SafeParcelReader.readInt(parcel, header3);
                    } else if (fieldId3 != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header3);
                    } else {
                        zatVar = (zat) SafeParcelReader.createParcelable(parcel, header3, zat.CREATOR);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader3);
                return new yi4(i, zatVar);
            case 16:
                int iValidateObjectHeader4 = SafeParcelReader.validateObjectHeader(parcel);
                zav zavVar = null;
                while (parcel.dataPosition() < iValidateObjectHeader4) {
                    int header4 = SafeParcelReader.readHeader(parcel);
                    int fieldId4 = SafeParcelReader.getFieldId(header4);
                    if (fieldId4 == 1) {
                        i = SafeParcelReader.readInt(parcel, header4);
                    } else if (fieldId4 == 2) {
                        connectionResult = (ConnectionResult) SafeParcelReader.createParcelable(parcel, header4, ConnectionResult.CREATOR);
                    } else if (fieldId4 != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header4);
                    } else {
                        zavVar = (zav) SafeParcelReader.createParcelable(parcel, header4, zav.CREATOR);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader4);
                return new bj4(i, connectionResult, zavVar);
            case 17:
                int iValidateObjectHeader5 = SafeParcelReader.validateObjectHeader(parcel);
                long j = 0;
                long j2 = 0;
                int i3 = 0;
                while (parcel.dataPosition() < iValidateObjectHeader5) {
                    int header5 = SafeParcelReader.readHeader(parcel);
                    int fieldId5 = SafeParcelReader.getFieldId(header5);
                    if (fieldId5 == 1) {
                        j = SafeParcelReader.readLong(parcel, header5);
                    } else if (fieldId5 == 2) {
                        i3 = SafeParcelReader.readInt(parcel, header5);
                    } else if (fieldId5 != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header5);
                    } else {
                        j2 = SafeParcelReader.readLong(parcel, header5);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader5);
                return new po4(i3, j, j2);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                int iValidateObjectHeader6 = SafeParcelReader.validateObjectHeader(parcel);
                long j3 = 0;
                long j4 = 0;
                long j5 = 0;
                boolean z = false;
                String strCreateString7 = null;
                String strCreateString8 = null;
                vb5 vb5Var = null;
                String strCreateString9 = null;
                bu4 bu4Var = null;
                bu4 bu4Var2 = null;
                bu4 bu4Var3 = null;
                while (parcel.dataPosition() < iValidateObjectHeader6) {
                    int header6 = SafeParcelReader.readHeader(parcel);
                    switch (SafeParcelReader.getFieldId(header6)) {
                        case 2:
                            strCreateString7 = SafeParcelReader.createString(parcel, header6);
                            break;
                        case 3:
                            strCreateString8 = SafeParcelReader.createString(parcel, header6);
                            break;
                        case 4:
                            vb5Var = (vb5) SafeParcelReader.createParcelable(parcel, header6, vb5.CREATOR);
                            break;
                        case 5:
                            j3 = SafeParcelReader.readLong(parcel, header6);
                            break;
                        case 6:
                            z = SafeParcelReader.readBoolean(parcel, header6);
                            break;
                        case 7:
                            strCreateString9 = SafeParcelReader.createString(parcel, header6);
                            break;
                        case 8:
                            bu4Var = (bu4) SafeParcelReader.createParcelable(parcel, header6, bu4.CREATOR);
                            break;
                        case ConnectionResult.SERVICE_INVALID /* 9 */:
                            j4 = SafeParcelReader.readLong(parcel, header6);
                            break;
                        case 10:
                            bu4Var2 = (bu4) SafeParcelReader.createParcelable(parcel, header6, bu4.CREATOR);
                            break;
                        case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                            j5 = SafeParcelReader.readLong(parcel, header6);
                            break;
                        case 12:
                            bu4Var3 = (bu4) SafeParcelReader.createParcelable(parcel, header6, bu4.CREATOR);
                            break;
                        default:
                            SafeParcelReader.skipUnknownField(parcel, header6);
                            break;
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader6);
                return new fq4(strCreateString7, strCreateString8, vb5Var, j3, z, strCreateString9, bu4Var, j4, bu4Var2, j5, bu4Var3);
            case 19:
                int iValidateObjectHeader7 = SafeParcelReader.validateObjectHeader(parcel);
                String strCreateString10 = null;
                String strCreateString11 = null;
                byte[] bArrCreateByteArray = null;
                ck ckVar = null;
                bk bkVar = null;
                dk dkVar = null;
                vj vjVar = null;
                String strCreateString12 = null;
                while (parcel.dataPosition() < iValidateObjectHeader7) {
                    int header7 = SafeParcelReader.readHeader(parcel);
                    switch (SafeParcelReader.getFieldId(header7)) {
                        case 1:
                            strCreateString10 = SafeParcelReader.createString(parcel, header7);
                            break;
                        case 2:
                            strCreateString11 = SafeParcelReader.createString(parcel, header7);
                            break;
                        case 3:
                            bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header7);
                            break;
                        case 4:
                            ckVar = (ck) SafeParcelReader.createParcelable(parcel, header7, ck.CREATOR);
                            break;
                        case 5:
                            bkVar = (bk) SafeParcelReader.createParcelable(parcel, header7, bk.CREATOR);
                            break;
                        case 6:
                            dkVar = (dk) SafeParcelReader.createParcelable(parcel, header7, dk.CREATOR);
                            break;
                        case 7:
                            vjVar = (vj) SafeParcelReader.createParcelable(parcel, header7, vj.CREATOR);
                            break;
                        case 8:
                            strCreateString12 = SafeParcelReader.createString(parcel, header7);
                            break;
                        case ConnectionResult.SERVICE_INVALID /* 9 */:
                            SafeParcelReader.createString(parcel, header7);
                            break;
                        default:
                            SafeParcelReader.skipUnknownField(parcel, header7);
                            break;
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader7);
                return new q03(strCreateString10, strCreateString11, bArrCreateByteArray, ckVar, bkVar, dkVar, vjVar, strCreateString12);
            case 20:
                int iValidateObjectHeader8 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader8) {
                    int header8 = SafeParcelReader.readHeader(parcel);
                    if (SafeParcelReader.getFieldId(header8) != 1) {
                        SafeParcelReader.skipUnknownField(parcel, header8);
                    } else {
                        bundleCreateBundle2 = SafeParcelReader.createBundle(parcel, header8);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader8);
                return new ms4(bundleCreateBundle2);
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                int iValidateObjectHeader9 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader9) {
                    int header9 = SafeParcelReader.readHeader(parcel);
                    int fieldId6 = SafeParcelReader.getFieldId(header9);
                    if (fieldId6 == 1) {
                        SafeParcelReader.readInt(parcel, header9);
                    } else if (fieldId6 != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header9);
                    } else {
                        strCreateString5 = SafeParcelReader.createString(parcel, header9);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader9);
                return new qs4(strCreateString5);
            case 22:
                int iValidateObjectHeader10 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader10) {
                    int header10 = SafeParcelReader.readHeader(parcel);
                    int fieldId7 = SafeParcelReader.getFieldId(header10);
                    if (fieldId7 == 1) {
                        SafeParcelReader.readInt(parcel, header10);
                    } else if (fieldId7 == 2) {
                        strCreateString4 = SafeParcelReader.createString(parcel, header10);
                    } else if (fieldId7 != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header10);
                    } else {
                        i = SafeParcelReader.readInt(parcel, header10);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader10);
                return new zs4(strCreateString4, i);
            case ConnectionResult.API_DISABLED /* 23 */:
                int iValidateObjectHeader11 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader11) {
                    int header11 = SafeParcelReader.readHeader(parcel);
                    int fieldId8 = SafeParcelReader.getFieldId(header11);
                    if (fieldId8 == 1) {
                        SafeParcelReader.readInt(parcel, header11);
                    } else if (fieldId8 != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header11);
                    } else {
                        strCreateString3 = SafeParcelReader.createString(parcel, header11);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader11);
                return new ct4(strCreateString3);
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                int iValidateObjectHeader12 = SafeParcelReader.validateObjectHeader(parcel);
                byte[] bArrCreateByteArray2 = null;
                while (parcel.dataPosition() < iValidateObjectHeader12) {
                    int header12 = SafeParcelReader.readHeader(parcel);
                    int fieldId9 = SafeParcelReader.getFieldId(header12);
                    if (fieldId9 == 1) {
                        SafeParcelReader.readInt(parcel, header12);
                    } else if (fieldId9 == 2) {
                        strCreateString2 = SafeParcelReader.createString(parcel, header12);
                    } else if (fieldId9 != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header12);
                    } else {
                        bArrCreateByteArray2 = SafeParcelReader.createByteArray(parcel, header12);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader12);
                return new ft4(strCreateString2, bArrCreateByteArray2);
            case 25:
                int iValidateObjectHeader13 = SafeParcelReader.validateObjectHeader(parcel);
                PendingIntent pendingIntent = null;
                while (parcel.dataPosition() < iValidateObjectHeader13) {
                    int header13 = SafeParcelReader.readHeader(parcel);
                    int fieldId10 = SafeParcelReader.getFieldId(header13);
                    if (fieldId10 == 1) {
                        SafeParcelReader.readInt(parcel, header13);
                    } else if (fieldId10 == 2) {
                        strCreateString = SafeParcelReader.createString(parcel, header13);
                    } else if (fieldId10 != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header13);
                    } else {
                        pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header13, PendingIntent.CREATOR);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader13);
                return new tt4(strCreateString, pendingIntent);
            case 26:
                int iValidateObjectHeader14 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader14) {
                    int header14 = SafeParcelReader.readHeader(parcel);
                    if (SafeParcelReader.getFieldId(header14) != 1) {
                        SafeParcelReader.skipUnknownField(parcel, header14);
                    } else {
                        arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header14, t94.CREATOR);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader14);
                return new s94(arrayListCreateTypedList);
            case 27:
                int iValidateObjectHeader15 = SafeParcelReader.validateObjectHeader(parcel);
                short s = 0;
                short s2 = 0;
                while (parcel.dataPosition() < iValidateObjectHeader15) {
                    int header15 = SafeParcelReader.readHeader(parcel);
                    int fieldId11 = SafeParcelReader.getFieldId(header15);
                    if (fieldId11 == 1) {
                        i = SafeParcelReader.readInt(parcel, header15);
                    } else if (fieldId11 == 2) {
                        s = SafeParcelReader.readShort(parcel, header15);
                    } else if (fieldId11 != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header15);
                    } else {
                        s2 = SafeParcelReader.readShort(parcel, header15);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader15);
                return new t94(i, s, s2);
            case 28:
                int iValidateObjectHeader16 = SafeParcelReader.validateObjectHeader(parcel);
                while (parcel.dataPosition() < iValidateObjectHeader16) {
                    int header16 = SafeParcelReader.readHeader(parcel);
                    if (SafeParcelReader.getFieldId(header16) != 2) {
                        SafeParcelReader.skipUnknownField(parcel, header16);
                    } else {
                        bundleCreateBundle = SafeParcelReader.createBundle(parcel, header16);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader16);
                return new zt4(bundleCreateBundle);
            default:
                int iValidateObjectHeader17 = SafeParcelReader.validateObjectHeader(parcel);
                long j6 = 0;
                long j7 = 0;
                String strCreateString13 = null;
                zt4 zt4Var = null;
                String strCreateString14 = null;
                while (parcel.dataPosition() < iValidateObjectHeader17) {
                    int header17 = SafeParcelReader.readHeader(parcel);
                    int fieldId12 = SafeParcelReader.getFieldId(header17);
                    if (fieldId12 == 2) {
                        strCreateString13 = SafeParcelReader.createString(parcel, header17);
                    } else if (fieldId12 == 3) {
                        zt4Var = (zt4) SafeParcelReader.createParcelable(parcel, header17, zt4.CREATOR);
                    } else if (fieldId12 == 4) {
                        strCreateString14 = SafeParcelReader.createString(parcel, header17);
                    } else if (fieldId12 == 5) {
                        j6 = SafeParcelReader.readLong(parcel, header17);
                    } else if (fieldId12 != 6) {
                        SafeParcelReader.skipUnknownField(parcel, header17);
                    } else {
                        j7 = SafeParcelReader.readLong(parcel, header17);
                    }
                }
                SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader17);
                return new bu4(strCreateString13, zt4Var, strCreateString14, j6, j7);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new e6[i];
            case 1:
                return new dq[i];
            case 2:
                return new eq[i];
            case 3:
                return new mp0[i];
            case 4:
                return new ed1[i];
            case 5:
                return new jd1[i];
            case 6:
                return new od1[i];
            case 7:
                return new us1[i];
            case 8:
                return new bl2[i];
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new ParcelImpl[i];
            case 10:
                return new ss2[i];
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return new ts2[i];
            case 12:
                return new us2[i];
            case 13:
                return new ji4[i];
            case 14:
                return new wi4[i];
            case 15:
                return new yi4[i];
            case 16:
                return new bj4[i];
            case 17:
                return new po4[i];
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return new fq4[i];
            case 19:
                return new q03[i];
            case 20:
                return new ms4[i];
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return new qs4[i];
            case 22:
                return new zs4[i];
            case ConnectionResult.API_DISABLED /* 23 */:
                return new ct4[i];
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return new ft4[i];
            case 25:
                return new tt4[i];
            case 26:
                return new s94[i];
            case 27:
                return new t94[i];
            case 28:
                return new zt4[i];
            default:
                return new bu4[i];
        }
    }
}
