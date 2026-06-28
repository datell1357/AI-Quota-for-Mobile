.class public final Le24;
.super Ljf2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic n:Lg24;

.field public final synthetic o:Lh24;


# direct methods
.method public constructor <init>(Lh24;Lg24;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Le24;->n:Lg24;

    .line 5
    .line 6
    iput-object p1, p0, Le24;->o:Lh24;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, Le24;->n:Lg24;

    .line 2
    .line 3
    iget v1, v0, Lg24;->b:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Le24;->o:Lh24;

    .line 8
    .line 9
    iget-object v0, v0, Lg24;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lh24;->N(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    return v1
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Le24;->n:Lg24;

    .line 2
    .line 3
    iget-object p0, p0, Lg24;->a:Ljava/lang/Object;

    .line 4
    .line 5
    return-object p0
.end method
