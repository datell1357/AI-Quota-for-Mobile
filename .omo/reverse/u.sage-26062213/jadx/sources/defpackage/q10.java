package defpackage;

import u.sage.worker.CalendarSyncWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q10 extends fh0 {
    public int A;
    public /* synthetic */ Object B;
    public final /* synthetic */ CalendarSyncWorker C;
    public int D;
    public y84 q;
    public String r;
    public m10 s;
    public d84 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f268u;
    public String v;
    public boolean w;
    public long x;
    public int y;
    public int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q10(CalendarSyncWorker calendarSyncWorker, fh0 fh0Var) {
        super(fh0Var);
        this.C = calendarSyncWorker;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.B = obj;
        this.D |= Integer.MIN_VALUE;
        return this.C.c(this);
    }
}
