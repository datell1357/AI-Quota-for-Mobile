package defpackage;

import com.google.android.gms.common.api.Api;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sg1 extends l1 {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, sg1> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize;
    protected v64 unknownFields;

    public sg1() {
        this.memoizedHashCode = 0;
        this.memoizedSerializedSize = -1;
        this.unknownFields = v64.f;
    }

    public static sg1 d(Class cls) {
        sg1 sg1Var = defaultInstanceMap.get(cls);
        if (sg1Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                sg1Var = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (sg1Var != null) {
            return sg1Var;
        }
        sg1 sg1Var2 = (sg1) ((sg1) n74.d(cls)).c(6);
        if (sg1Var2 == null) {
            throw new IllegalStateException();
        }
        defaultInstanceMap.put(cls, sg1Var2);
        return sg1Var2;
    }

    public static Object e(Method method, sg1 sg1Var, Object... objArr) {
        try {
            return method.invoke(sg1Var, objArr);
        } catch (IllegalAccessException e) {
            k21.i("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            k21.i("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static final boolean f(sg1 sg1Var, boolean z) {
        byte bByteValue = ((Byte) sg1Var.c(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        zz2 zz2Var = zz2.c;
        zz2Var.getClass();
        boolean zF = zz2Var.a(sg1Var.getClass()).f(sg1Var);
        if (z) {
            sg1Var.c(2);
        }
        return zF;
    }

    public static void j(Class cls, sg1 sg1Var) {
        sg1Var.h();
        defaultInstanceMap.put(cls, sg1Var);
    }

    @Override // defpackage.l1
    public final int a(be3 be3Var) {
        int iE;
        int iE2;
        if (g()) {
            if (be3Var == null) {
                zz2 zz2Var = zz2.c;
                zz2Var.getClass();
                iE2 = zz2Var.a(getClass()).e(this);
            } else {
                iE2 = be3Var.e(this);
            }
            if (iE2 >= 0) {
                return iE2;
            }
            k21.n(di0.q(iE2, "serialized size must be non-negative, was "));
            return 0;
        }
        int i = this.memoizedSerializedSize;
        if ((i & Api.BaseClientBuilder.API_PRIORITY_OTHER) != Integer.MAX_VALUE) {
            return i & Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        if (be3Var == null) {
            zz2 zz2Var2 = zz2.c;
            zz2Var2.getClass();
            iE = zz2Var2.a(getClass()).e(this);
        } else {
            iE = be3Var.e(this);
        }
        k(iE);
        return iE;
    }

    @Override // defpackage.l1
    public final void b(d70 d70Var) {
        zz2 zz2Var = zz2.c;
        zz2Var.getClass();
        be3 be3VarA = zz2Var.a(getClass());
        dh1 dh1Var = d70Var.a;
        if (dh1Var == null) {
            dh1Var = new dh1();
            dt1.a(d70Var, "output");
            dh1Var.n = d70Var;
            d70Var.a = dh1Var;
        }
        be3VarA.h(this, dh1Var);
    }

    public abstract Object c(int i);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zz2 zz2Var = zz2.c;
        zz2Var.getClass();
        return zz2Var.a(getClass()).g(this, (sg1) obj);
    }

    public final boolean g() {
        return (this.memoizedSerializedSize & MUTABLE_FLAG_MASK) != 0;
    }

    public final void h() {
        this.memoizedSerializedSize &= Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public final int hashCode() {
        if (g()) {
            zz2 zz2Var = zz2.c;
            zz2Var.getClass();
            return zz2Var.a(getClass()).a(this);
        }
        if (this.memoizedHashCode == 0) {
            zz2 zz2Var2 = zz2.c;
            zz2Var2.getClass();
            this.memoizedHashCode = zz2Var2.a(getClass()).a(this);
        }
        return this.memoizedHashCode;
    }

    public final sg1 i() {
        return (sg1) c(4);
    }

    public final void k(int i) {
        if (i < 0) {
            k21.n(di0.q(i, "serialized size must be non-negative, was "));
        } else {
            this.memoizedSerializedSize = (i & Api.BaseClientBuilder.API_PRIORITY_OTHER) | (this.memoizedSerializedSize & MUTABLE_FLAG_MASK);
        }
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = qc2.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        qc2.c(this, sb, 0);
        return sb.toString();
    }
}
