package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cq0 implements jf3 {
    public final /* synthetic */ hg a;

    public cq0(hg hgVar) {
        this.a = hgVar;
    }

    @Override // defpackage.jf3
    public final float a(float f) {
        if (Float.isNaN(f)) {
            return 0.0f;
        }
        hg hgVar = this.a;
        float fFloatValue = ((Number) ((pe1) hgVar.a).k(Float.valueOf(f))).floatValue();
        ((ws2) hgVar.e).setValue(Boolean.valueOf(fFloatValue > 0.0f));
        ((ws2) hgVar.f).setValue(Boolean.valueOf(fFloatValue < 0.0f));
        return fFloatValue;
    }
}
