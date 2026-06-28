package defpackage;

import com.google.api.client.http.UrlEncodedParser;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class a64 {
    public static final BitSet a;
    public static final BitSet b;
    public static final BitSet c;
    public static final BitSet d;
    public static final BitSet e;
    public static final BitSet f;
    public static final BitSet g;
    public static final BitSet h;
    public static final BitSet i;

    static {
        BitSet bitSet = new BitSet(256);
        a = bitSet;
        bitSet.set(47);
        b = new BitSet(256);
        c = new BitSet(256);
        d = new BitSet(256);
        e = new BitSet(256);
        f = new BitSet(256);
        g = new BitSet(256);
        h = new BitSet(256);
        i = new BitSet(256);
        for (int i2 = 97; i2 <= 122; i2++) {
            b.set(i2);
        }
        for (int i3 = 65; i3 <= 90; i3++) {
            b.set(i3);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            b.set(i4);
        }
        BitSet bitSet2 = b;
        bitSet2.set(95);
        bitSet2.set(45);
        bitSet2.set(46);
        bitSet2.set(42);
        h.or(bitSet2);
        bitSet2.set(33);
        bitSet2.set(126);
        bitSet2.set(39);
        bitSet2.set(40);
        bitSet2.set(41);
        BitSet bitSet3 = c;
        bitSet3.set(44);
        bitSet3.set(59);
        bitSet3.set(58);
        bitSet3.set(36);
        bitSet3.set(38);
        bitSet3.set(43);
        bitSet3.set(61);
        BitSet bitSet4 = d;
        bitSet4.or(bitSet2);
        bitSet4.or(bitSet3);
        BitSet bitSet5 = e;
        bitSet5.or(bitSet2);
        bitSet5.set(59);
        bitSet5.set(58);
        bitSet5.set(64);
        bitSet5.set(38);
        bitSet5.set(61);
        bitSet5.set(43);
        bitSet5.set(36);
        bitSet5.set(44);
        BitSet bitSet6 = i;
        bitSet6.or(bitSet5);
        bitSet6.set(47);
        BitSet bitSet7 = g;
        bitSet7.set(59);
        bitSet7.set(47);
        bitSet7.set(63);
        bitSet7.set(58);
        bitSet7.set(64);
        bitSet7.set(38);
        bitSet7.set(61);
        bitSet7.set(43);
        bitSet7.set(36);
        bitSet7.set(44);
        bitSet7.set(91);
        bitSet7.set(93);
        BitSet bitSet8 = f;
        bitSet8.or(bitSet7);
        bitSet8.or(bitSet2);
    }

    public static String a(Iterable iterable, Charset charset) {
        String strF;
        w80.L(iterable, "Parameters");
        StringBuilder sb = new StringBuilder();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sh2 sh2Var = (sh2) it.next();
            String name = sh2Var.getName();
            BitSet bitSet = h;
            String strF2 = null;
            if (name == null) {
                strF = null;
            } else {
                strF = f(name, charset != null ? charset : uf0.a, bitSet, true);
            }
            String value = sh2Var.getValue();
            if (value != null) {
                strF2 = f(value, charset != null ? charset : uf0.a, bitSet, true);
            }
            if (sb.length() > 0) {
                sb.append('&');
            }
            sb.append(strF);
            if (strF2 != null) {
                sb.append("=");
                sb.append(strF2);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList b(defpackage.b40 r8, java.nio.charset.Charset r9, char... r10) {
        /*
            java.util.BitSet r0 = new java.util.BitSet
            r0.<init>()
            int r1 = r10.length
            r2 = 0
            r3 = r2
        L8:
            if (r3 >= r1) goto L12
            char r4 = r10[r3]
            r0.set(r4)
            int r3 = r3 + 1
            goto L8
        L12:
            ky0 r10 = new ky0
            int r1 = r8.o
            r10.<init>(r2, r1)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
        L1e:
            boolean r2 = r10.a()
            if (r2 != 0) goto L7c
            r2 = 61
            r0.set(r2)
            java.lang.String r3 = defpackage.qv3.s(r8, r10, r0)
            boolean r4 = r10.a()
            r5 = 0
            r6 = 1
            if (r4 != 0) goto L55
            int r4 = r10.d
            char[] r7 = r8.n
            char r7 = r7[r4]
            int r4 = r4 + r6
            r10.b(r4)
            if (r7 != r2) goto L55
            r0.clear(r2)
            java.lang.String r2 = defpackage.qv3.s(r8, r10, r0)
            boolean r4 = r10.a()
            if (r4 != 0) goto L56
            int r4 = r10.d
            int r4 = r4 + r6
            r10.b(r4)
            goto L56
        L55:
            r2 = r5
        L56:
            boolean r4 = r3.isEmpty()
            if (r4 != 0) goto L1e
            ev r4 = new ev
            if (r9 == 0) goto L62
            r7 = r9
            goto L64
        L62:
            java.nio.charset.Charset r7 = defpackage.uf0.a
        L64:
            java.lang.String r3 = e(r3, r7, r6)
            if (r2 != 0) goto L6b
            goto L75
        L6b:
            if (r9 == 0) goto L6f
            r5 = r9
            goto L71
        L6f:
            java.nio.charset.Charset r5 = defpackage.uf0.a
        L71:
            java.lang.String r5 = e(r2, r5, r6)
        L75:
            r4.<init>(r3, r5)
            r1.add(r4)
            goto L1e
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a64.b(b40, java.nio.charset.Charset, char[]):java.util.ArrayList");
    }

    public static ArrayList c(xl1 xl1Var) throws IOException {
        w80.L(xl1Var, "HTTP entity");
        pg0 pg0VarB = pg0.b(xl1Var);
        if (pg0VarB == null || !pg0VarB.n.equalsIgnoreCase(UrlEncodedParser.CONTENT_TYPE)) {
            return new ArrayList(0);
        }
        long contentLength = xl1Var.getContentLength();
        w80.l("HTTP entity is too large", contentLength <= 2147483647L);
        Charset charset = pg0VarB.o;
        if (charset == null) {
            charset = vi1.a;
        }
        InputStream content = xl1Var.getContent();
        if (content == null) {
            return new ArrayList(0);
        }
        try {
            b40 b40Var = new b40(contentLength > 0 ? (int) contentLength : 1024);
            InputStreamReader inputStreamReader = new InputStreamReader(content, charset);
            char[] cArr = new char[1024];
            while (true) {
                int i2 = inputStreamReader.read(cArr);
                if (i2 == -1) {
                    break;
                }
                b40Var.d(cArr, 0, i2);
            }
            content.close();
            return b40Var.isEmpty() ? new ArrayList(0) : b(b40Var, charset, '&');
        } catch (Throwable th) {
            content.close();
            throw th;
        }
    }

    public static List d(String str) {
        ky0 ky0Var = new ky0(0, str.length());
        if (ky0Var.a()) {
            return Collections.EMPTY_LIST;
        }
        char cCharAt = str.charAt(ky0Var.d);
        BitSet bitSet = a;
        if (bitSet.get(cCharAt)) {
            ky0Var.b(ky0Var.d + 1);
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        while (!ky0Var.a()) {
            char cCharAt2 = str.charAt(ky0Var.d);
            if (bitSet.get(cCharAt2)) {
                arrayList.add(sb.toString());
                sb.setLength(0);
            } else {
                sb.append(cCharAt2);
            }
            ky0Var.b(ky0Var.d + 1);
        }
        arrayList.add(sb.toString());
        return arrayList;
    }

    public static String e(String str, Charset charset, boolean z) {
        if (str == null) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(str.length());
        CharBuffer charBufferWrap = CharBuffer.wrap(str);
        while (charBufferWrap.hasRemaining()) {
            char c2 = charBufferWrap.get();
            if (c2 == '%' && charBufferWrap.remaining() >= 2) {
                char c3 = charBufferWrap.get();
                char c4 = charBufferWrap.get();
                int iDigit = Character.digit(c3, 16);
                int iDigit2 = Character.digit(c4, 16);
                if (iDigit == -1 || iDigit2 == -1) {
                    byteBufferAllocate.put((byte) 37);
                    byteBufferAllocate.put((byte) c3);
                    byteBufferAllocate.put((byte) c4);
                } else {
                    byteBufferAllocate.put((byte) ((iDigit << 4) + iDigit2));
                }
            } else if (z && c2 == '+') {
                byteBufferAllocate.put((byte) 32);
            } else {
                byteBufferAllocate.put((byte) c2);
            }
        }
        byteBufferAllocate.flip();
        return charset.decode(byteBufferAllocate).toString();
    }

    public static String f(String str, Charset charset, BitSet bitSet, boolean z) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        ByteBuffer byteBufferEncode = charset.encode(str);
        while (byteBufferEncode.hasRemaining()) {
            byte b2 = byteBufferEncode.get();
            int i2 = b2 & 255;
            if (bitSet.get(i2)) {
                sb.append((char) i2);
            } else if (z && i2 == 32) {
                sb.append('+');
            } else {
                sb.append("%");
                char upperCase = Character.toUpperCase(Character.forDigit((i2 >> 4) & 15, 16));
                char upperCase2 = Character.toUpperCase(Character.forDigit(b2 & 15, 16));
                sb.append(upperCase);
                sb.append(upperCase2);
            }
        }
        return sb.toString();
    }
}
