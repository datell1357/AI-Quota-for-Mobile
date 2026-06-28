.class public final Lwz0;
.super Lqj0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final l:Lvz0;


# direct methods
.method public constructor <init>(Lxg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvz0;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lvz0;-><init>(Lxg;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwz0;->l:Lvz0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final L([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    invoke-static {}, Lhz0;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p0, p0, Lwz0;->l:Lvz0;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lvz0;->L([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final W(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lhz0;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lwz0;->l:Lvz0;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lvz0;->W(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final X(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lhz0;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lwz0;->l:Lvz0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean p1, p0, Lvz0;->n:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lvz0;->X(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
