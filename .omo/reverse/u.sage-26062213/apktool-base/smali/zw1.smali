.class public final Lzw1;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public q:Lzn0;

.field public r:Ld90;

.field public s:Ljava/util/LinkedHashMap;

.field public t:Ljava/lang/String;

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ld90;

.field public w:I


# direct methods
.method public constructor <init>(Ld90;Ldr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzw1;->v:Ld90;

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
    iput-object p1, p0, Lzw1;->u:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lzw1;->w:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lzw1;->w:I

    .line 9
    .line 10
    iget-object p1, p0, Lzw1;->v:Ld90;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, p0}, Ld90;->a(Ld90;Lzn0;Ldr;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
