.class public final Ly02;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lhb;


# direct methods
.method public constructor <init>(Lpe1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhb;

    .line 5
    .line 6
    invoke-direct {v0}, Lhb;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly02;->a:Lhb;

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(ILih1;Lpe1;Lka0;)V
    .locals 6

    .line 1
    new-instance v0, Leh;

    .line 2
    .line 3
    const/16 v4, 0x12

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v1, p2

    .line 7
    move-object v2, p3

    .line 8
    move-object v3, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Leh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Ly02;->a:Lhb;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p2, "size should be >=0"

    .line 21
    .line 22
    invoke-static {p2}, Ldr1;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p2, Lit1;

    .line 29
    .line 30
    iget p3, p0, Lhb;->b:I

    .line 31
    .line 32
    invoke-direct {p2, p3, p1, v0}, Lit1;-><init>(IILeh;)V

    .line 33
    .line 34
    .line 35
    iget p3, p0, Lhb;->b:I

    .line 36
    .line 37
    add-int/2addr p3, p1

    .line 38
    iput p3, p0, Lhb;->b:I

    .line 39
    .line 40
    iget-object p0, p0, Lhb;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lug2;

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lug2;->c(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
