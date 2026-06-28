.class public final synthetic Lal1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:Lcl1;

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lcl1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lal1;->n:Lcl1;

    .line 5
    .line 6
    iput p2, p0, Lal1;->o:I

    .line 7
    .line 8
    iput p3, p0, Lal1;->p:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lal1;->n:Lcl1;

    .line 2
    .line 3
    iget v1, p0, Lal1;->o:I

    .line 4
    .line 5
    iget p0, p0, Lal1;->p:I

    .line 6
    .line 7
    :try_start_0
    iget-object v2, v0, Lcl1;->J:Lkl1;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v1, v3, p0}, Lkl1;->B(IZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object v1, Ld21;->q:Ld21;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v1, p0}, Lcl1;->b(Ld21;Ld21;Ljava/io/IOException;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 21
    .line 22
    return-object p0
.end method
