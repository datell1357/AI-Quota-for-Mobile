package defpackage;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.SystemClock;
import android.text.format.DateUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class fj extends h52 {
    private static final boolean DEBUG = false;
    private static final String TAG = "AsyncTaskLoader";
    private volatile ej mCancellingTask;
    private Executor mExecutor;
    private Handler mHandler;
    private long mLastLoadCompleteTime;
    private volatile ej mTask;
    private long mUpdateThrottle;

    public fj(Context context) {
        super(context);
        this.mLastLoadCompleteTime = -10000L;
    }

    public void dispatchOnCancelled(ej ejVar, Object obj) {
        onCanceled(obj);
        if (this.mCancellingTask == ejVar) {
            rollbackContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mCancellingTask = null;
            deliverCancellation();
            executePendingTask();
        }
    }

    public void dispatchOnLoadComplete(ej ejVar, Object obj) {
        if (this.mTask != ejVar) {
            dispatchOnCancelled(ejVar, obj);
            return;
        }
        if (isAbandoned()) {
            onCanceled(obj);
            return;
        }
        commitContentChanged();
        this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
        this.mTask = null;
        deliverResult(obj);
    }

    @Override // defpackage.h52
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2;
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.mTask != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.mTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mTask.r);
        }
        if (this.mCancellingTask != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.mCancellingTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mCancellingTask.r);
        }
        if (this.mUpdateThrottle != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            printWriter.print(DateUtils.formatElapsedTime(this.mUpdateThrottle / 1000));
            printWriter.print(" mLastLoadCompleteTime=");
            if (this.mLastLoadCompleteTime == -10000) {
                str2 = "--";
            } else {
                str2 = "-" + DateUtils.formatElapsedTime((SystemClock.uptimeMillis() - this.mLastLoadCompleteTime) / 1000);
            }
            printWriter.print(str2);
            printWriter.println();
        }
    }

    public void executePendingTask() {
        if (this.mCancellingTask != null || this.mTask == null) {
            return;
        }
        if (this.mTask.r) {
            this.mTask.r = DEBUG;
            this.mHandler.removeCallbacks(this.mTask);
        }
        if (this.mUpdateThrottle > 0 && SystemClock.uptimeMillis() < this.mLastLoadCompleteTime + this.mUpdateThrottle) {
            this.mTask.r = true;
            this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
            return;
        }
        if (this.mExecutor == null) {
            this.mExecutor = getExecutor();
        }
        ej ejVar = this.mTask;
        Executor executor = this.mExecutor;
        if (ejVar.o == 1) {
            ejVar.o = 2;
            executor.execute(ejVar.n);
            return;
        }
        int iF = di0.F(ejVar.o);
        if (iF == 1) {
            k21.n("Cannot execute task: the task is already running.");
        } else if (iF != 2) {
            k21.n("We should never reach this state");
        } else {
            k21.n("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
    }

    public Executor getExecutor() {
        return AsyncTask.THREAD_POOL_EXECUTOR;
    }

    public boolean isLoadInBackgroundCanceled() {
        if (this.mCancellingTask != null) {
            return true;
        }
        return DEBUG;
    }

    public abstract Object loadInBackground();

    @Override // defpackage.h52
    public boolean onCancelLoad() {
        if (this.mTask == null) {
            return DEBUG;
        }
        if (!isStarted()) {
            onContentChanged();
        }
        ej ejVar = this.mCancellingTask;
        ej ejVar2 = this.mTask;
        if (ejVar != null) {
            if (ejVar2.r) {
                this.mTask.r = DEBUG;
                this.mHandler.removeCallbacks(this.mTask);
            }
            this.mTask = null;
            return DEBUG;
        }
        boolean z = ejVar2.r;
        ej ejVar3 = this.mTask;
        if (z) {
            ejVar3.r = DEBUG;
            this.mHandler.removeCallbacks(this.mTask);
            this.mTask = null;
            return DEBUG;
        }
        ejVar3.p.set(true);
        boolean zCancel = ejVar3.n.cancel(DEBUG);
        if (zCancel) {
            this.mCancellingTask = this.mTask;
            cancelLoadInBackground();
        }
        this.mTask = null;
        return zCancel;
    }

    @Override // defpackage.h52
    public void onForceLoad() {
        cancelLoad();
        this.mTask = new ej(this);
        executePendingTask();
    }

    public Object onLoadInBackground() {
        return loadInBackground();
    }

    public void setUpdateThrottle(long j) {
        this.mUpdateThrottle = j;
        if (j != 0) {
            this.mHandler = new Handler();
        }
    }

    public void cancelLoadInBackground() {
    }

    public void onCanceled(Object obj) {
    }
}
