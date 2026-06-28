package defpackage;

import android.text.Layout;
import android.text.TextPaint;
import java.text.BreakIterator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rb implements os2 {
    public final String a;
    public final ay3 b;
    public final List c;
    public final List d;
    public final qa1 e;
    public final as0 f;
    public final jc g;
    public final CharSequence h;
    public final my1 i;
    public ui3 j;
    public final boolean k;
    public final int l;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0528  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0671  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x07c2  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x07ed  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0847  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x0871 A[LOOP:6: B:419:0x086f->B:420:0x0871, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0882  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public rb(java.lang.String r41, defpackage.ay3 r42, java.util.List r43, java.util.List r44, defpackage.qa1 r45, defpackage.as0 r46) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rb.<init>(java.lang.String, ay3, java.util.List, java.util.List, qa1, as0):void");
    }

    @Override // defpackage.os2
    public final float a() {
        my1 my1Var = this.i;
        float f = my1Var.e;
        TextPaint textPaint = my1Var.b;
        if (!Float.isNaN(f)) {
            return my1Var.e;
        }
        BreakIterator lineInstance = BreakIterator.getLineInstance(textPaint.getTextLocale());
        CharSequence charSequence = my1Var.a;
        lineInstance.setText(new i40(charSequence.length(), charSequence));
        PriorityQueue priorityQueue = new PriorityQueue(10, ht4.m);
        int i = 0;
        for (int next = lineInstance.next(); next != -1; next = lineInstance.next()) {
            if (priorityQueue.size() < 10) {
                priorityQueue.add(new ms1(i, next, 1));
            } else {
                ms1 ms1Var = (ms1) priorityQueue.peek();
                if (ms1Var != null && ms1Var.o - ms1Var.n < next - i) {
                    priorityQueue.poll();
                    priorityQueue.add(new ms1(i, next, 1));
                }
            }
            i = next;
        }
        float desiredWidth = 0.0f;
        if (!priorityQueue.isEmpty()) {
            Iterator it = priorityQueue.iterator();
            if (!it.hasNext()) {
                p61.v();
                return 0.0f;
            }
            ms1 ms1Var2 = (ms1) it.next();
            desiredWidth = Layout.getDesiredWidth(my1Var.b(), ms1Var2.n, ms1Var2.o, textPaint);
            while (it.hasNext()) {
                ms1 ms1Var3 = (ms1) it.next();
                desiredWidth = Math.max(desiredWidth, Layout.getDesiredWidth(my1Var.b(), ms1Var3.n, ms1Var3.o, textPaint));
            }
        }
        my1Var.e = desiredWidth;
        return desiredWidth;
    }

    @Override // defpackage.os2
    public final boolean b() {
        ui3 ui3Var = this.j;
        if (ui3Var != null ? ui3Var.g() : false) {
            return true;
        }
        if (!this.k && tv4.g(this.b)) {
            wu4 wu4Var = kz0.a;
            wu4 wu4Var2 = kz0.a;
            tr3 tr3VarN = (tr3) wu4Var2.o;
            if (tr3VarN == null) {
                if (hz0.c()) {
                    tr3VarN = wu4Var2.n();
                    wu4Var2.o = tr3VarN;
                } else {
                    tr3VarN = w80.i;
                }
            }
            if (((Boolean) tr3VarN.getValue()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.os2
    public final float c() {
        return this.i.c();
    }
}
