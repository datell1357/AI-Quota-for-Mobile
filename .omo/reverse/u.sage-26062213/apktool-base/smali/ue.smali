.class public final Lue;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Le34;

.field public final b:Ljava/lang/Object;

.field public final c:J

.field public final d:Lne1;

.field public final e:Lws2;

.field public f:Lbf;

.field public g:J

.field public h:J

.field public final i:Lws2;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le34;Lbf;JLjava/lang/Object;JLne1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lue;->a:Le34;

    .line 5
    .line 6
    iput-object p6, p0, Lue;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p7, p0, Lue;->c:J

    .line 9
    .line 10
    iput-object p9, p0, Lue;->d:Lne1;

    .line 11
    .line 12
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lue;->e:Lws2;

    .line 17
    .line 18
    invoke-static {p3}, Lc75;->t(Lbf;)Lbf;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lue;->f:Lbf;

    .line 23
    .line 24
    iput-wide p4, p0, Lue;->g:J

    .line 25
    .line 26
    const-wide/high16 p1, -0x8000000000000000L

    .line 27
    .line 28
    iput-wide p1, p0, Lue;->h:J

    .line 29
    .line 30
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lue;->i:Lws2;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lue;->i:Lws2;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lue;->d:Lne1;

    .line 9
    .line 10
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
