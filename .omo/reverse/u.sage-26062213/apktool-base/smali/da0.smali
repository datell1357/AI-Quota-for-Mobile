.class public final Lda0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public final f:Lnv3;

.field public final g:Lnv3;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lda0;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lda0;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lda0;->c:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lda0;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lda0;->e:Ljava/util/List;

    .line 13
    .line 14
    new-instance p1, Lba0;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p0, p2}, Lba0;-><init>(Lda0;I)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Lnv3;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lda0;->f:Lnv3;

    .line 26
    .line 27
    new-instance p1, Lba0;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-direct {p1, p0, p2}, Lba0;-><init>(Lda0;I)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Lnv3;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lda0;->g:Lnv3;

    .line 39
    .line 40
    return-void
.end method
