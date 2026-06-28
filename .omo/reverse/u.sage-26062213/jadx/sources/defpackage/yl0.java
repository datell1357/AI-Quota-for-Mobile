package defpackage;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yl0 {
    public final LinkedHashMap a;

    public yl0(pl2 pl2Var) {
        Map map = pl2Var.a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), o70.D0((Collection) entry.getValue()));
        }
        this.a = linkedHashMap;
    }

    public void a(HashMap map) {
        Object[] objArr;
        map.getClass();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            str.getClass();
            if (value == null) {
                value = null;
            } else {
                i50 i50VarA = y33.a(value.getClass());
                if (!i50VarA.equals(y33.a(Boolean.TYPE)) && !i50VarA.equals(y33.a(Byte.TYPE)) && !i50VarA.equals(y33.a(Integer.TYPE)) && !i50VarA.equals(y33.a(Long.TYPE)) && !i50VarA.equals(y33.a(Float.TYPE)) && !i50VarA.equals(y33.a(Double.TYPE)) && !i50VarA.equals(y33.a(String.class)) && !i50VarA.equals(y33.a(Boolean[].class)) && !i50VarA.equals(y33.a(Byte[].class)) && !i50VarA.equals(y33.a(Integer[].class)) && !i50VarA.equals(y33.a(Long[].class)) && !i50VarA.equals(y33.a(Float[].class)) && !i50VarA.equals(y33.a(Double[].class)) && !i50VarA.equals(y33.a(String[].class))) {
                    int i = 0;
                    if (i50VarA.equals(y33.a(boolean[].class))) {
                        boolean[] zArr = (boolean[]) value;
                        String str2 = hn0.a;
                        int length = zArr.length;
                        objArr = new Boolean[length];
                        while (i < length) {
                            objArr[i] = Boolean.valueOf(zArr[i]);
                            i++;
                        }
                    } else if (i50VarA.equals(y33.a(byte[].class))) {
                        byte[] bArr = (byte[]) value;
                        String str3 = hn0.a;
                        int length2 = bArr.length;
                        objArr = new Byte[length2];
                        while (i < length2) {
                            objArr[i] = Byte.valueOf(bArr[i]);
                            i++;
                        }
                    } else if (i50VarA.equals(y33.a(int[].class))) {
                        int[] iArr = (int[]) value;
                        String str4 = hn0.a;
                        int length3 = iArr.length;
                        objArr = new Integer[length3];
                        while (i < length3) {
                            objArr[i] = Integer.valueOf(iArr[i]);
                            i++;
                        }
                    } else if (i50VarA.equals(y33.a(long[].class))) {
                        long[] jArr = (long[]) value;
                        String str5 = hn0.a;
                        int length4 = jArr.length;
                        objArr = new Long[length4];
                        while (i < length4) {
                            objArr[i] = Long.valueOf(jArr[i]);
                            i++;
                        }
                    } else if (i50VarA.equals(y33.a(float[].class))) {
                        float[] fArr = (float[]) value;
                        String str6 = hn0.a;
                        int length5 = fArr.length;
                        objArr = new Float[length5];
                        while (i < length5) {
                            objArr[i] = Float.valueOf(fArr[i]);
                            i++;
                        }
                    } else {
                        if (!i50VarA.equals(y33.a(double[].class))) {
                            mk0.i("Key ", str, " has invalid type ", i50VarA);
                            return;
                        }
                        double[] dArr = (double[]) value;
                        String str7 = hn0.a;
                        int length6 = dArr.length;
                        objArr = new Double[length6];
                        while (i < length6) {
                            objArr[i] = Double.valueOf(dArr[i]);
                            i++;
                        }
                    }
                    value = objArr;
                }
            }
            this.a.put(str, value);
        }
    }

    public nr3 b(bg4 bg4Var) {
        bg4Var.getClass();
        return (nr3) this.a.remove(bg4Var);
    }

    public List c(String str) {
        str.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = this.a;
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            if (nt1.g(((bg4) entry.getKey()).a, str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            linkedHashMap2.remove((bg4) it.next());
        }
        return o70.C0(linkedHashMap.values());
    }

    public void d(String str) {
        String lowerCase = "Cache-Control".toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        this.a.put(lowerCase, tv4.H(str));
    }

    public nr3 e(bg4 bg4Var) {
        LinkedHashMap linkedHashMap = this.a;
        Object nr3Var = linkedHashMap.get(bg4Var);
        if (nr3Var == null) {
            nr3Var = new nr3(bg4Var);
            linkedHashMap.put(bg4Var, nr3Var);
        }
        return (nr3) nr3Var;
    }

    public yl0(int i) {
        switch (i) {
            case 1:
                this.a = new LinkedHashMap(0, 0.75f, true);
                break;
            case 2:
            default:
                this.a = new LinkedHashMap();
                break;
            case 3:
                this.a = new LinkedHashMap();
                break;
        }
    }
}
