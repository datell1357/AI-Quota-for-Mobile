.class public final Ltd1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:I

.field public b:Llc1;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lg22;

.field public i:Lg22;


# direct methods
.method public constructor <init>(Llc1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ltd1;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ltd1;->b:Llc1;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Ltd1;->c:Z

    .line 10
    .line 11
    sget-object p1, Lg22;->r:Lg22;

    .line 12
    .line 13
    iput-object p1, p0, Ltd1;->h:Lg22;

    .line 14
    .line 15
    iput-object p1, p0, Ltd1;->i:Lg22;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Llc1;II)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Ltd1;->a:I

    .line 20
    iput-object p1, p0, Ltd1;->b:Llc1;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Ltd1;->c:Z

    .line 22
    sget-object p1, Lg22;->r:Lg22;

    iput-object p1, p0, Ltd1;->h:Lg22;

    .line 23
    iput-object p1, p0, Ltd1;->i:Lg22;

    return-void
.end method
