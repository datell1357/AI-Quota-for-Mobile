package defpackage;

import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.model.CalendarListEntry;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sh1 extends fh0 {
    public Calendar q;
    public CalendarListEntry r;
    public com.google.api.services.calendar.model.Calendar s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ wh1 f317u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sh1(wh1 wh1Var, fh0 fh0Var) {
        super(fh0Var);
        this.f317u = wh1Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return wh1.d(this.f317u, null, this);
    }
}
