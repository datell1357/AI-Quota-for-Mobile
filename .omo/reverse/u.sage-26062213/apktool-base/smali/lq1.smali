.class public final Llq1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Z

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Llq1;->c:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    iput p2, p0, Llq1;->b:I

    .line 8
    .line 9
    new-instance p2, Landroid/view/GestureDetector;

    .line 10
    .line 11
    new-instance v0, Lkq1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lkq1;-><init>(Llq1;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Llq1;->d:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lr6;ZLse0;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Llq1;->d:Ljava/lang/Object;

    .line 24
    iput-boolean p2, p0, Llq1;->a:Z

    .line 25
    iput-object p3, p0, Llq1;->c:Ljava/lang/Object;

    .line 26
    iput p4, p0, Llq1;->b:I

    return-void
.end method

.method public static a(C)Llq1;
    .locals 4

    .line 1
    new-instance v0, Lg40;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lg40;-><init>(C)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Llq1;

    .line 7
    .line 8
    new-instance v1, Lr6;

    .line 9
    .line 10
    const/16 v2, 0x10

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lh40;->G:Lh40;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {p0, v1, v3, v0, v2}, Llq1;-><init>(Lr6;ZLse0;I)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method
