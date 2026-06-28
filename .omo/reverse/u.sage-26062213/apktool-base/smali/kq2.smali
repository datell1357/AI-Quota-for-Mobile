.class public final Lkq2;
.super Lzq2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Lkq2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkq2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v2}, Lzq2;-><init>(III)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkq2;->c:Lkq2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Le50;Lkh;Lxn3;Ll53;Lar2;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Le50;->d(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Leg1;

    .line 7
    .line 8
    iget-object p1, p4, Ll53;->e:Lug2;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lug2;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p4, Ll53;->d:Llg2;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
