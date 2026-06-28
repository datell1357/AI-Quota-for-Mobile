.class public final Lmq2;
.super Lzq2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Lmq2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmq2;

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
    sput-object v0, Lmq2;->c:Lmq2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Le50;Lkh;Lxn3;Ll53;Lar2;)V
    .locals 0

    .line 1
    iget p0, p3, Lxn3;->t:I

    .line 2
    .line 3
    new-instance p1, Lsp0;

    .line 4
    .line 5
    const/4 p2, 0x4

    .line 6
    invoke-direct {p1, p2, p4}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0, p1}, Lxn3;->n(ILdf1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Lxn3;->H()Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
