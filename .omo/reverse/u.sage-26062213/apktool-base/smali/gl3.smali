.class public final Lgl3;
.super Landroid/text/style/CharacterStyle;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field public final n:Lqy;

.field public final o:F

.field public final p:Lws2;

.field public final q:Los0;


# direct methods
.method public constructor <init>(Lqy;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgl3;->n:Lqy;

    .line 5
    .line 6
    iput p2, p0, Lgl3;->o:F

    .line 7
    .line 8
    new-instance p1, Lmn3;

    .line 9
    .line 10
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0, v1}, Lmn3;-><init>(J)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lgl3;->p:Lws2;

    .line 23
    .line 24
    new-instance p1, Lvc3;

    .line 25
    .line 26
    const/4 p2, 0x6

    .line 27
    invoke-direct {p1, p2, p0}, Lvc3;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lca;->m(Lne1;)Los0;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lgl3;->q:Los0;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget v0, p0, Lgl3;->o:F

    .line 2
    .line 3
    invoke-static {p1, v0}, Lht4;->E(Landroid/text/TextPaint;F)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lgl3;->q:Los0;

    .line 7
    .line 8
    invoke-virtual {p0}, Los0;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/graphics/Shader;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 15
    .line 16
    .line 17
    return-void
.end method
