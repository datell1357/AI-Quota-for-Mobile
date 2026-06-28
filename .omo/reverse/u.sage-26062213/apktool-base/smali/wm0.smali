.class public final Lwm0;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public q:Lhh2;

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lfn0;

.field public t:I


# direct methods
.method public constructor <init>(Lfn0;Lfh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm0;->s:Lfn0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh0;-><init>(Ldh0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lwm0;->r:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lwm0;->t:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lwm0;->t:I

    .line 9
    .line 10
    iget-object p1, p0, Lwm0;->s:Lfn0;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lfn0;->e(Lfn0;Lfh0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
