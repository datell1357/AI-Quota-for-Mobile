.class public final Ldx;
.super Lkr0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leh3;


# instance fields
.field public D:Lzw;

.field public E:F

.field public F:Lsp3;

.field public G:Ljl3;

.field public final H:Lq00;


# direct methods
.method public constructor <init>(FLsp3;Ljl3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkr0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ldx;->E:F

    .line 5
    .line 6
    iput-object p2, p0, Ldx;->F:Lsp3;

    .line 7
    .line 8
    iput-object p3, p0, Ldx;->G:Ljl3;

    .line 9
    .line 10
    new-instance p1, Lv;

    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    invoke-direct {p1, p2, p0}, Lv;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Lq00;

    .line 17
    .line 18
    new-instance p3, Lr00;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lmj1;->O:Lmj1;

    .line 24
    .line 25
    iput-object v0, p3, Lr00;->n:Liz;

    .line 26
    .line 27
    invoke-direct {p2, p3, p1}, Lq00;-><init>(Lr00;Lv;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Ldx;->H:Lq00;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a0(Lph3;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ldx;->G:Ljl3;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lnh3;->d(Lph3;Ljl3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
