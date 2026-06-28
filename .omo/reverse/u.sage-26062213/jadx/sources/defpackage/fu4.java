package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public enum fu4 {
    o(0),
    p(1),
    q(2),
    r(3),
    s(56),
    t(57),
    f102u(58),
    v(59),
    w(60),
    x(61),
    y(62),
    z(53),
    A(4),
    B(5),
    C(52),
    D(6),
    /* JADX INFO: Fake field, exist only in values array */
    EF0(49),
    E(7),
    F(8),
    G(9),
    H(50),
    I(10),
    /* JADX INFO: Fake field, exist only in values array */
    EF0(11),
    J(12),
    K(13),
    L(51),
    M(47),
    N(54),
    O(55),
    P(63),
    Q(64),
    R(65),
    S(66),
    T(15),
    /* JADX INFO: Fake field, exist only in values array */
    EF0(48),
    U(16),
    V(17),
    W(18),
    X(19),
    Y(20),
    Z(21),
    a0(22),
    b0(23),
    c0(24),
    d0(25),
    e0(26),
    f0(27),
    g0(28),
    h0(29),
    i0(45),
    j0(30),
    /* JADX INFO: Fake field, exist only in values array */
    EF1(31),
    k0(32),
    l0(33),
    m0(46),
    n0(34),
    o0(35),
    p0(36),
    q0(43),
    r0(37),
    s0(38),
    t0(39),
    u0(40),
    v0(44),
    w0(41),
    x0(42);

    public static final HashMap y0 = new HashMap();
    public final int n;

    static {
        for (fu4 fu4Var : values()) {
            y0.put(Integer.valueOf(fu4Var.n), fu4Var);
        }
    }

    fu4(int i) {
        this.n = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.valueOf(this.n).toString();
    }
}
