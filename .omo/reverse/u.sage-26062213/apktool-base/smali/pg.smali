.class public final Lpg;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:Landroid/widget/TextView;

.field public final synthetic o:Landroid/graphics/Typeface;

.field public final synthetic p:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpg;->n:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Lpg;->o:Landroid/graphics/Typeface;

    .line 7
    .line 8
    iput p3, p0, Lpg;->p:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpg;->o:Landroid/graphics/Typeface;

    .line 2
    .line 3
    iget v1, p0, Lpg;->p:I

    .line 4
    .line 5
    iget-object p0, p0, Lpg;->n:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
