.class final Lcom/dji/auto/ui/TakeOverWarningLayout$mTakeOverWarningAnimation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TakeOverWarningLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dji/auto/ui/TakeOverWarningLayout;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/animation/AlphaAnimation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/animation/AlphaAnimation;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dji/auto/ui/TakeOverWarningLayout$mTakeOverWarningAnimation$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dji/auto/ui/TakeOverWarningLayout$mTakeOverWarningAnimation$2;

    invoke-direct {v0}, Lcom/dji/auto/ui/TakeOverWarningLayout$mTakeOverWarningAnimation$2;-><init>()V

    sput-object v0, Lcom/dji/auto/ui/TakeOverWarningLayout$mTakeOverWarningAnimation$2;->INSTANCE:Lcom/dji/auto/ui/TakeOverWarningLayout$mTakeOverWarningAnimation$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .line 23
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, -0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    const-wide/16 v1, 0x2bc

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/dji/auto/ui/TakeOverWarningLayout$mTakeOverWarningAnimation$2;->invoke()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method
