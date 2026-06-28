.class public final Ltt3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltt3;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "Type"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lw80;->N(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput p2, p0, Ltt3;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ltt3;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
