package defpackage;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l42 implements View.OnTouchListener {
    public final /* synthetic */ m42 n;

    public l42(m42 m42Var) {
        this.n = m42Var;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        m42 m42Var = this.n;
        i42 i42Var = m42Var.A;
        Handler handler = m42Var.E;
        mg mgVar = m42Var.I;
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && mgVar != null && mgVar.isShowing() && x >= 0 && x < mgVar.getWidth() && y >= 0 && y < mgVar.getHeight()) {
            handler.postDelayed(i42Var, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        handler.removeCallbacks(i42Var);
        return false;
    }
}
