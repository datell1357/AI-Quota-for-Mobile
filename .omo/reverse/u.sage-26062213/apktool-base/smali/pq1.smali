.class public final Lpq1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltr3;


# instance fields
.field public n:Ljava/lang/Float;

.field public o:Ljava/lang/Float;

.field public final p:Lws2;

.field public q:Llw3;

.field public r:Z

.field public s:Z

.field public t:J

.field public final synthetic u:Lrq1;


# direct methods
.method public constructor <init>(Lrq1;Ljava/lang/Float;Ljava/lang/Float;Loq1;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpq1;->u:Lrq1;

    .line 5
    .line 6
    iput-object p2, p0, Lpq1;->n:Ljava/lang/Float;

    .line 7
    .line 8
    iput-object p3, p0, Lpq1;->o:Ljava/lang/Float;

    .line 9
    .line 10
    invoke-static {p2}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lpq1;->p:Lws2;

    .line 15
    .line 16
    new-instance v0, Llw3;

    .line 17
    .line 18
    iget-object v3, p0, Lpq1;->n:Ljava/lang/Float;

    .line 19
    .line 20
    iget-object v4, p0, Lpq1;->o:Ljava/lang/Float;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    sget-object v2, Lk30;->m:Le34;

    .line 24
    .line 25
    move-object v1, p4

    .line 26
    invoke-direct/range {v0 .. v5}, Llw3;-><init>(Lve;Le34;Ljava/lang/Object;Ljava/lang/Object;Lbf;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lpq1;->q:Llw3;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lpq1;->p:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
