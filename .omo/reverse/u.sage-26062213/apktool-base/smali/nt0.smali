.class public Lnt0;
.super Llc1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_INTERNAL_DIALOG_SHOWING:Ljava/lang/String; = "android:dialogShowing"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field private mBackStackId:I

.field private mCancelable:Z

.field private mCreatingDialog:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDialogCreated:Z

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Lbo2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbo2;"
        }
    .end annotation
.end field

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mShownByMe:Z

.field private mShowsDialog:Z

.field private mStyle:I

.field private mTheme:I

.field private mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Llc1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo9;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1, p0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lnt0;->mDismissRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Lkt0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lkt0;-><init>(Lnt0;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lnt0;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    .line 19
    new-instance v0, Llt0;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Llt0;-><init>(Lnt0;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lnt0;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lnt0;->mStyle:I

    .line 28
    .line 29
    iput v0, p0, Lnt0;->mTheme:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lnt0;->mCancelable:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lnt0;->mShowsDialog:Z

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    iput v1, p0, Lnt0;->mBackStackId:I

    .line 38
    .line 39
    new-instance v1, Lwu4;

    .line 40
    .line 41
    const/16 v2, 0x19

    .line 42
    .line 43
    invoke-direct {v1, v2, p0}, Lwu4;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lnt0;->mObserver:Lbo2;

    .line 47
    .line 48
    iput-boolean v0, p0, Lnt0;->mDialogCreated:Z

    .line 49
    .line 50
    return-void
.end method

.method public static synthetic access$000(Lnt0;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lnt0;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt0;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lnt0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnt0;->mShowsDialog:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public createFragmentContainer()Lsc1;
    .locals 2

    .line 1
    invoke-super {p0}, Llc1;->createFragmentContainer()Lsc1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmt0;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lmt0;-><init>(Lnt0;Lsc1;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method public dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0}, Lnt0;->f(ZZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1}, Lnt0;->f(ZZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dismissNow()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v0, v1}, Lnt0;->f(ZZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(ZZZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lnt0;->mDismissed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lnt0;->mDismissed:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lnt0;->mShownByMe:Z

    .line 11
    .line 12
    iget-object v2, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object v2, p0, Lnt0;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-ne p2, v2, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Lnt0;->onDismiss(Landroid/content/DialogInterface;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p2, p0, Lnt0;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v2, p0, Lnt0;->mDismissRunnable:Ljava/lang/Runnable;

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lnt0;->mViewDestroyed:Z

    .line 53
    .line 54
    iget p2, p0, Lnt0;->mBackStackId:I

    .line 55
    .line 56
    if-ltz p2, :cond_6

    .line 57
    .line 58
    const-string p2, "Bad id: "

    .line 59
    .line 60
    if-eqz p3, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Llc1;->getParentFragmentManager()Lhd1;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget p3, p0, Lnt0;->mBackStackId:I

    .line 67
    .line 68
    if-ltz p3, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1, p3, v0}, Lhd1;->N(II)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {p3, p2}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    invoke-virtual {p0}, Llc1;->getParentFragmentManager()Lhd1;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    iget v0, p0, Lnt0;->mBackStackId:I

    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    if-ltz v0, :cond_5

    .line 95
    .line 96
    new-instance p2, Lgd1;

    .line 97
    .line 98
    invoke-direct {p2, p3, v0}, Lgd1;-><init>(Lhd1;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p2, p1}, Lhd1;->v(Lfd1;Z)V

    .line 102
    .line 103
    .line 104
    :goto_1
    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lnt0;->mBackStackId:I

    .line 106
    .line 107
    return-void

    .line 108
    :cond_5
    invoke-static {v0, p2}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_6
    invoke-virtual {p0}, Llc1;->getParentFragmentManager()Lhd1;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    new-instance v2, Lcq;

    .line 124
    .line 125
    invoke-direct {v2, p2}, Lcq;-><init>(Lhd1;)V

    .line 126
    .line 127
    .line 128
    iput-boolean v0, v2, Lud1;->o:Z

    .line 129
    .line 130
    iget-object p2, p0, Llc1;->mFragmentManager:Lhd1;

    .line 131
    .line 132
    iget-object v3, v2, Lcq;->p:Lhd1;

    .line 133
    .line 134
    if-eqz p2, :cond_8

    .line 135
    .line 136
    if-ne p2, v3, :cond_7

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string p3, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    .line 144
    .line 145
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Llc1;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p0, " is already attached to a FragmentManager."

    .line 156
    .line 157
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_8
    :goto_2
    new-instance p2, Ltd1;

    .line 169
    .line 170
    const/4 v4, 0x3

    .line 171
    invoke-direct {p2, p0, v4}, Ltd1;-><init>(Llc1;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, p2}, Lud1;->b(Ltd1;)V

    .line 175
    .line 176
    .line 177
    if-eqz p3, :cond_a

    .line 178
    .line 179
    iget-boolean p0, v2, Lud1;->g:Z

    .line 180
    .line 181
    if-nez p0, :cond_9

    .line 182
    .line 183
    invoke-virtual {v3, v2, v1}, Lhd1;->y(Lcq;Z)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_9
    const-string p0, "This transaction is already being added to the back stack"

    .line 188
    .line 189
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_a
    if-eqz p1, :cond_b

    .line 194
    .line 195
    invoke-virtual {v2, v0}, Lcq;->e(Z)I

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_b
    invoke-virtual {v2, v1}, Lcq;->e(Z)I

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method

.method public getShowsDialog()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnt0;->mShowsDialog:Z

    .line 2
    .line 3
    return p0
.end method

.method public getTheme()I
    .locals 0

    .line 1
    iget p0, p0, Lnt0;->mTheme:I

    .line 2
    .line 3
    return p0
.end method

.method public isCancelable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnt0;->mCancelable:Z

    .line 2
    .line 3
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Llc1;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Llc1;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Llc1;->getViewLifecycleOwnerLiveData()Lc52;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lnt0;->mObserver:Lbo2;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v1, "observeForever"

    .line 14
    .line 15
    invoke-static {v1}, Lc52;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lz42;

    .line 19
    .line 20
    invoke-direct {v1, p1, v0}, Lb52;-><init>(Lc52;Lbo2;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lc52;->b:Lac3;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lac3;->a(Ljava/lang/Object;)Lxb3;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object p1, v2, Lxb3;->o:Ljava/lang/Object;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance v2, Lxb3;

    .line 36
    .line 37
    invoke-direct {v2, v0, v1}, Lxb3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget v0, p1, Lac3;->q:I

    .line 41
    .line 42
    add-int/2addr v0, v3

    .line 43
    iput v0, p1, Lac3;->q:I

    .line 44
    .line 45
    iget-object v0, p1, Lac3;->o:Lxb3;

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iput-object v2, p1, Lac3;->n:Lxb3;

    .line 50
    .line 51
    iput-object v2, p1, Lac3;->o:Lxb3;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iput-object v2, v0, Lxb3;->p:Lxb3;

    .line 55
    .line 56
    iput-object v0, v2, Lxb3;->q:Lxb3;

    .line 57
    .line 58
    iput-object v2, p1, Lac3;->o:Lxb3;

    .line 59
    .line 60
    :goto_0
    const/4 p1, 0x0

    .line 61
    :goto_1
    check-cast p1, Lb52;

    .line 62
    .line 63
    instance-of v0, p1, La52;

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v1, v3}, Lb52;->a(Z)V

    .line 71
    .line 72
    .line 73
    :goto_2
    iget-boolean p1, p0, Lnt0;->mShownByMe:Z

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lnt0;->mDismissed:Z

    .line 79
    .line 80
    :cond_3
    return-void

    .line 81
    :cond_4
    const-string p0, "Cannot add the same observer with different lifecycles"

    .line 82
    .line 83
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Llc1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnt0;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget v0, p0, Llc1;->mContainerId:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    iput-boolean v0, p0, Lnt0;->mShowsDialog:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string v0, "android:style"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lnt0;->mStyle:I

    .line 31
    .line 32
    const-string v0, "android:theme"

    .line 33
    .line 34
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lnt0;->mTheme:I

    .line 39
    .line 40
    const-string v0, "android:cancelable"

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput-boolean v0, p0, Lnt0;->mCancelable:Z

    .line 47
    .line 48
    const-string v0, "android:showsDialog"

    .line 49
    .line 50
    iget-boolean v1, p0, Lnt0;->mShowsDialog:Z

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput-boolean v0, p0, Lnt0;->mShowsDialog:Z

    .line 57
    .line 58
    const-string v0, "android:backStackId"

    .line 59
    .line 60
    const/4 v1, -0x1

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lnt0;->mBackStackId:I

    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Lhd1;->G(I)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "onCreateDialog called for DialogFragment "

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance p1, Ly90;

    .line 28
    .line 29
    invoke-virtual {p0}, Llc1;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lnt0;->getTheme()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-direct {p1, v0, p0}, Ly90;-><init>(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Llc1;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lnt0;->mViewDestroyed:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lnt0;->mDismissed:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lnt0;->onDismiss(Landroid/content/DialogInterface;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-object v1, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lnt0;->mDialogCreated:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Llc1;->onDetach()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lnt0;->mShownByMe:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lnt0;->mDismissed:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lnt0;->mDismissed:Z

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Llc1;->getViewLifecycleOwnerLiveData()Lc52;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p0, p0, Lnt0;->mObserver:Lbo2;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lc52;->g(Lbo2;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lnt0;->mViewDestroyed:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-static {p1}, Lhd1;->G(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "onDismiss called for DialogFragment "

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "FragmentManager"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0, v0, p1}, Lnt0;->f(ZZZ)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 6

    .line 1
    invoke-super {p0, p1}, Llc1;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lnt0;->mShowsDialog:Z

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const-string v3, "FragmentManager"

    .line 9
    .line 10
    if-eqz v1, :cond_6

    .line 11
    .line 12
    iget-boolean v4, p0, Lnt0;->mCreatingDialog:Z

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_1
    iget-boolean v1, p0, Lnt0;->mDialogCreated:Z

    .line 22
    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    :try_start_0
    iput-boolean v4, p0, Lnt0;->mCreatingDialog:Z

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lnt0;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 34
    .line 35
    iget-boolean v5, p0, Lnt0;->mShowsDialog:Z

    .line 36
    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    iget v5, p0, Lnt0;->mStyle:I

    .line 40
    .line 41
    invoke-virtual {p0, p1, v5}, Lnt0;->setupDialog(Landroid/app/Dialog;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Llc1;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    instance-of v5, p1, Landroid/app/Activity;

    .line 49
    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    iget-object v5, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 53
    .line 54
    check-cast p1, Landroid/app/Activity;

    .line 55
    .line 56
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_0
    iget-object p1, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 63
    .line 64
    iget-boolean v5, p0, Lnt0;->mCancelable:Z

    .line 65
    .line 66
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 70
    .line 71
    iget-object v5, p0, Lnt0;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 72
    .line 73
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 77
    .line 78
    iget-object v5, p0, Lnt0;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 79
    .line 80
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    .line 82
    .line 83
    iput-boolean v4, p0, Lnt0;->mDialogCreated:Z

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lnt0;->mDialog:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    :goto_1
    iput-boolean v1, p0, Lnt0;->mCreatingDialog:Z

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_2
    iput-boolean v1, p0, Lnt0;->mCreatingDialog:Z

    .line 93
    .line 94
    throw p1

    .line 95
    :cond_4
    :goto_3
    invoke-static {v2}, Lhd1;->G(I)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "get layout inflater for DialogFragment "

    .line 104
    .line 105
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, " from dialog context"

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object p0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 124
    .line 125
    if-eqz p0, :cond_8

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :cond_6
    :goto_4
    invoke-static {v2}, Lhd1;->G(I)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_8

    .line 141
    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v1, "getting layout inflater for DialogFragment "

    .line 145
    .line 146
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-boolean p0, p0, Lnt0;->mShowsDialog:Z

    .line 157
    .line 158
    if-nez p0, :cond_7

    .line 159
    .line 160
    const-string p0, "mShowsDialog = false: "

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    return-object v0

    .line 170
    :cond_7
    const-string p0, "mCreatingDialog = true: "

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_8
    return-object v0
.end method

.method public onHasView()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnt0;->mDialogCreated:Z

    .line 2
    .line 3
    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android:dialogShowing"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    const-string v1, "android:savedDialogState"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lnt0;->mStyle:I

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v1, "android:style"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lnt0;->mTheme:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v1, "android:theme"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-boolean v0, p0, Lnt0;->mCancelable:Z

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    const-string v1, "android:cancelable"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-boolean v0, p0, Lnt0;->mShowsDialog:Z

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    const-string v1, "android:showsDialog"

    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget p0, p0, Lnt0;->mBackStackId:I

    .line 57
    .line 58
    const/4 v0, -0x1

    .line 59
    if-eq p0, v0, :cond_5

    .line 60
    .line 61
    const-string v0, "android:backStackId"

    .line 62
    .line 63
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Llc1;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lnt0;->mViewDestroyed:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0900d7

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0900db

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const v1, 0x7f0900da

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Llc1;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Llc1;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "android:savedDialogState"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Llc1;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Llc1;->mView:Landroid/view/View;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const-string p1, "android:savedDialogState"

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final requireDialog()Landroid/app/Dialog;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnt0;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v0, "DialogFragment "

    .line 9
    .line 10
    const-string v1, " does not have a Dialog."

    .line 11
    .line 12
    invoke-static {p0, v1, v0}, Lmk0;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnt0;->mCancelable:Z

    .line 2
    .line 3
    iget-object p0, p0, Lnt0;->mDialog:Landroid/app/Dialog;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnt0;->mShowsDialog:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStyle(II)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lhd1;->G(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Setting style and theme for DialogFragment "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " to "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "FragmentManager"

    .line 39
    .line 40
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    iput p1, p0, Lnt0;->mStyle:I

    .line 44
    .line 45
    if-eq p1, v0, :cond_1

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    :cond_1
    const p1, 0x1030059

    .line 51
    .line 52
    .line 53
    iput p1, p0, Lnt0;->mTheme:I

    .line 54
    .line 55
    :cond_2
    if-eqz p2, :cond_3

    .line 56
    .line 57
    iput p2, p0, Lnt0;->mTheme:I

    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p2, p0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x18

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public show(Lud1;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lnt0;->mDismissed:Z

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lnt0;->mShownByMe:Z

    .line 26
    invoke-virtual {p1, v0, p0, p2}, Lud1;->c(ILlc1;Ljava/lang/String;)V

    .line 27
    iput-boolean v0, p0, Lnt0;->mViewDestroyed:Z

    .line 28
    check-cast p1, Lcq;

    .line 29
    invoke-virtual {p1, v0}, Lcq;->e(Z)I

    move-result p1

    .line 30
    iput p1, p0, Lnt0;->mBackStackId:I

    return p1
.end method

.method public show(Lhd1;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnt0;->mDismissed:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lnt0;->mShownByMe:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcq;

    .line 11
    .line 12
    invoke-direct {v2, p1}, Lcq;-><init>(Lhd1;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, v2, Lud1;->o:Z

    .line 16
    .line 17
    invoke-virtual {v2, v0, p0, p2}, Lcq;->c(ILlc1;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lcq;->e(Z)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public showNow(Lhd1;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnt0;->mDismissed:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lnt0;->mShownByMe:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcq;

    .line 11
    .line 12
    invoke-direct {v2, p1}, Lcq;-><init>(Lhd1;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, v2, Lud1;->o:Z

    .line 16
    .line 17
    invoke-virtual {v2, v0, p0, p2}, Lcq;->c(ILlc1;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p0, v2, Lud1;->g:Z

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    iget-object p0, v2, Lcq;->p:Lhd1;

    .line 25
    .line 26
    invoke-virtual {p0, v2, v0}, Lhd1;->y(Lcq;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string p0, "This transaction is already being added to the back stack"

    .line 31
    .line 32
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
