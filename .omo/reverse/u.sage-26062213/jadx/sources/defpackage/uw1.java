package defpackage;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uw1 extends yv1 {
    public final Serializable n;

    public uw1(Boolean bool) {
        Objects.requireNonNull(bool);
        this.n = bool;
    }

    public static boolean e(uw1 uw1Var) {
        Serializable serializable = uw1Var.n;
        if (!(serializable instanceof Number)) {
            return false;
        }
        Number number = (Number) serializable;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    public final BigInteger a() {
        Serializable serializable = this.n;
        if (serializable instanceof BigInteger) {
            return (BigInteger) serializable;
        }
        if (e(this)) {
            return BigInteger.valueOf(c().longValue());
        }
        String strD = d();
        zf5.p(strD);
        return new BigInteger(strD);
    }

    public final Number c() {
        Serializable serializable = this.n;
        if (serializable instanceof Number) {
            return (Number) serializable;
        }
        if (serializable instanceof String) {
            return new pz1((String) serializable);
        }
        p61.s("Primitive is neither a number nor a string");
        return null;
    }

    public final String d() {
        Serializable serializable = this.n;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        if (serializable instanceof Number) {
            return c().toString();
        }
        if (serializable instanceof Boolean) {
            return ((Boolean) serializable).toString();
        }
        throw new AssertionError("Unexpected value type: " + serializable.getClass());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || uw1.class != obj.getClass()) {
            return false;
        }
        uw1 uw1Var = (uw1) obj;
        Serializable serializable = uw1Var.n;
        Serializable serializable2 = this.n;
        if (serializable2 == null) {
            return serializable == null;
        }
        if (e(this) && e(uw1Var)) {
            return ((serializable2 instanceof BigInteger) || (serializable instanceof BigInteger)) ? a().equals(uw1Var.a()) : c().longValue() == uw1Var.c().longValue();
        }
        if (!(serializable2 instanceof Number) || !(serializable instanceof Number)) {
            return serializable2.equals(serializable);
        }
        if ((serializable2 instanceof BigDecimal) && (serializable instanceof BigDecimal)) {
            return (serializable2 instanceof BigDecimal ? (BigDecimal) serializable2 : zf5.S(d())).compareTo(serializable instanceof BigDecimal ? (BigDecimal) serializable : zf5.S(uw1Var.d())) == 0;
        }
        double dDoubleValue = serializable2 instanceof Number ? c().doubleValue() : Double.parseDouble(d());
        double dDoubleValue2 = serializable instanceof Number ? uw1Var.c().doubleValue() : Double.parseDouble(uw1Var.d());
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        Serializable serializable = this.n;
        if (serializable == null) {
            return 31;
        }
        if (e(this)) {
            jDoubleToLongBits = c().longValue();
        } else {
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(c().doubleValue());
        }
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public uw1(Number number) {
        Objects.requireNonNull(number);
        this.n = number;
    }

    public uw1(String str) {
        Objects.requireNonNull(str);
        this.n = str;
    }
}
