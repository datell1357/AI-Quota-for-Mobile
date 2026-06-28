.class public final Loq2;
.super Lzq2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Loq2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Loq2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v0, v1, v1, v2}, Lzq2;-><init>(III)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Loq2;->c:Loq2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Le50;Lkh;Lxn3;Ll53;Lar2;)V
    .locals 0

    .line 1
    iget p0, p3, Lxn3;->n:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "Cannot reset when inserting"

    .line 7
    .line 8
    invoke-static {p0}, Lwb0;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p3}, Lxn3;->G()V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    iput p0, p3, Lxn3;->t:I

    .line 16
    .line 17
    invoke-virtual {p3}, Lxn3;->o()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget p2, p3, Lxn3;->h:I

    .line 22
    .line 23
    sub-int/2addr p1, p2

    .line 24
    iput p1, p3, Lxn3;->u:I

    .line 25
    .line 26
    iput p0, p3, Lxn3;->i:I

    .line 27
    .line 28
    iput p0, p3, Lxn3;->j:I

    .line 29
    .line 30
    iput p0, p3, Lxn3;->o:I

    .line 31
    .line 32
    return-void
.end method
