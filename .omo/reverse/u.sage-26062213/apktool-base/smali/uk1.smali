.class public final synthetic Luk1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:Lcl1;

.field public final synthetic o:I

.field public final synthetic p:J


# direct methods
.method public synthetic constructor <init>(Lcl1;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luk1;->n:Lcl1;

    .line 5
    .line 6
    iput p2, p0, Luk1;->o:I

    .line 7
    .line 8
    iput-wide p3, p0, Luk1;->p:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Luk1;->n:Lcl1;

    .line 2
    .line 3
    iget v1, p0, Luk1;->o:I

    .line 4
    .line 5
    iget-wide v2, p0, Luk1;->p:J

    .line 6
    .line 7
    :try_start_0
    iget-object p0, v0, Lcl1;->J:Lkl1;

    .line 8
    .line 9
    invoke-virtual {p0, v1, v2, v3}, Lkl1;->K(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    sget-object v1, Ld21;->q:Ld21;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v1, p0}, Lcl1;->b(Ld21;Ld21;Ljava/io/IOException;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 20
    .line 21
    return-object p0
.end method
