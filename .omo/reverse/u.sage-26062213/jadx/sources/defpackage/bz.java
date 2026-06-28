package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class bz {
    public static final a40 a = new a40(-1, null, null, 0);
    public static final int b = ca.N(32, "kotlinx.coroutines.bufferedChannel.segmentSize", 12);
    public static final int c = ca.N(10000, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 12);
    public static final sg0 d = new sg0("BUFFERED", 3);
    public static final sg0 e = new sg0("SHOULD_BUFFER", 3);
    public static final sg0 f = new sg0("S_RESUMING_BY_RCV", 3);
    public static final sg0 g = new sg0("RESUMING_BY_EB", 3);
    public static final sg0 h = new sg0("POISONED", 3);
    public static final sg0 i = new sg0("DONE_RCV", 3);
    public static final sg0 j = new sg0("INTERRUPTED_SEND", 3);
    public static final sg0 k = new sg0("INTERRUPTED_RCV", 3);
    public static final sg0 l = new sg0("CHANNEL_CLOSED", 3);
    public static final sg0 m = new sg0("SUSPEND", 3);
    public static final sg0 n = new sg0("SUSPEND_NO_WAITER", 3);
    public static final sg0 o = new sg0("FAILED", 3);
    public static final sg0 p = new sg0("NO_RECEIVE_RESULT", 3);
    public static final sg0 q = new sg0("CLOSE_HANDLER_CLOSED", 3);
    public static final sg0 r = new sg0("CLOSE_HANDLER_INVOKED", 3);
    public static final sg0 s = new sg0("NO_CLOSE_CAUSE", 3);

    public static final boolean a(n20 n20Var, Object obj, ff1 ff1Var) {
        sg0 sg0VarI = n20Var.i(obj, ff1Var);
        if (sg0VarI == null) {
            return false;
        }
        n20Var.r(sg0VarI);
        return true;
    }
}
