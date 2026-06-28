package defpackage;

import android.net.Uri;
import android.system.Os;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class lu4 {
    public static IOException a(gd5 gd5Var, Uri uri, IOException iOException, String str) {
        try {
            ud5 ud5Var = new ud5();
            ud5Var.n = true;
            File file = (File) gd5Var.a(uri, ud5Var);
            return file.exists() ? file.isFile() ? file.canRead() ? file.canWrite() ? c(file, iOException, str) : c(file, iOException, str) : file.canWrite() ? c(file, iOException, str) : c(file, iOException, str) : file.canRead() ? file.canWrite() ? c(file, iOException, str) : c(file, iOException, str) : file.canWrite() ? c(file, iOException, str) : c(file, iOException, str) : c(file, iOException, str);
        } catch (IOException unused) {
            return new IOException(iOException);
        }
    }

    public static String b(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String strR;
        int i = 0;
        int i2 = 0;
        while (true) {
            length = objArr.length;
            if (i2 >= length) {
                break;
            }
            Object obj = objArr[i2];
            if (obj == null) {
                strR = "null";
            } else {
                try {
                    strR = obj.toString();
                } catch (Exception e) {
                    String str2 = obj.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(str2), (Throwable) e);
                    strR = xw1.r("<", str2, " threw ", e.getClass().getName(), ">");
                }
            }
            objArr[i2] = strR;
            i2++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i3 = 0;
        while (true) {
            length2 = objArr.length;
            if (i >= length2 || (iIndexOf = str.indexOf("%s", i3)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i3, iIndexOf);
            sb.append(objArr[i]);
            i++;
            i3 = iIndexOf + 2;
        }
        sb.append((CharSequence) str, i3, str.length());
        if (i < length2) {
            sb.append(" [");
            sb.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb.append(", ");
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static IOException c(File file, IOException iOException, String str) {
        File parentFile = file.getParentFile();
        return parentFile == null ? d(file, iOException, str) : parentFile.exists() ? parentFile.isDirectory() ? parentFile.canRead() ? parentFile.canWrite() ? d(file, iOException, str) : d(file, iOException, str) : parentFile.canWrite() ? d(file, iOException, str) : d(file, iOException, str) : parentFile.canRead() ? parentFile.canWrite() ? d(file, iOException, str) : d(file, iOException, str) : parentFile.canWrite() ? d(file, iOException, str) : d(file, iOException, str) : d(file, iOException, str);
    }

    public static IOException d(File file, IOException iOException, String str) {
        String strConcat;
        try {
            Locale locale = Locale.US;
            String str2 = " canonical[" + file.getCanonicalPath() + "] freeSpace[" + file.getFreeSpace() + "] protoName[" + str + "]";
            StringBuilder sb = new StringBuilder(str2.length() + 16);
            sb.append("Inoperable file:");
            sb.append(str2);
            strConcat = sb.toString();
            try {
                String str3 = " mode[" + Os.stat(file.getCanonicalPath()).st_mode + "]";
                StringBuilder sb2 = new StringBuilder(strConcat.length() + str3.length());
                sb2.append(strConcat);
                sb2.append(str3);
                strConcat = sb2.toString();
            } catch (Exception unused) {
            }
        } catch (IOException unused2) {
            strConcat = "Inoperable file:".concat(" failed");
        }
        return new IOException(strConcat, iOException);
    }
}
