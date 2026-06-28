.class public final Lk84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Ln84;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lu33;

.field public final synthetic r:Lu33;

.field public final synthetic s:Lu33;

.field public final synthetic t:Ls33;

.field public final synthetic u:J

.field public final synthetic v:Landroid/os/Handler;

.field public final synthetic w:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(JLs33;Lu33;Lu33;Lu33;Ln84;Landroid/os/Handler;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p7, p0, Lk84;->n:Ln84;

    .line 5
    .line 6
    iput-object p10, p0, Lk84;->o:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p11, p0, Lk84;->p:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lk84;->q:Lu33;

    .line 11
    .line 12
    iput-object p5, p0, Lk84;->r:Lu33;

    .line 13
    .line 14
    iput-object p6, p0, Lk84;->s:Lu33;

    .line 15
    .line 16
    iput-object p3, p0, Lk84;->t:Ls33;

    .line 17
    .line 18
    iput-wide p1, p0, Lk84;->u:J

    .line 19
    .line 20
    iput-object p8, p0, Lk84;->v:Landroid/os/Handler;

    .line 21
    .line 22
    iput-object p9, p0, Lk84;->w:Landroid/webkit/WebView;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    sget-object p1, Lez3;->a:Lra3;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lra3;->m([Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v8, p0, Lk84;->v:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v9, p0, Lk84;->w:Landroid/webkit/WebView;

    .line 17
    .line 18
    iget-wide v1, p0, Lk84;->u:J

    .line 19
    .line 20
    iget-object v3, p0, Lk84;->t:Ls33;

    .line 21
    .line 22
    iget-object v4, p0, Lk84;->q:Lu33;

    .line 23
    .line 24
    iget-object v5, p0, Lk84;->r:Lu33;

    .line 25
    .line 26
    iget-object v6, p0, Lk84;->s:Lu33;

    .line 27
    .line 28
    iget-object v7, p0, Lk84;->n:Ln84;

    .line 29
    .line 30
    iget-object v10, p0, Lk84;->o:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v11, p0, Lk84;->p:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static/range {v1 .. v11}, Lq;->t(JLs33;Lu33;Lu33;Lu33;Ln84;Landroid/os/Handler;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lt64;->a:Lt64;

    .line 38
    .line 39
    return-object p0
.end method
