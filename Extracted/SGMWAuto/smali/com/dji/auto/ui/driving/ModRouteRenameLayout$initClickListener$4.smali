.class public final Lcom/dji/auto/ui/driving/ModRouteRenameLayout$initClickListener$4;
.super Ljava/lang/Object;
.source "ModRouteRenameLayout.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dji/auto/ui/driving/ModRouteRenameLayout;->initClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/dji/auto/ui/driving/ModRouteRenameLayout$initClickListener$4",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "IS_Auto_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dji/auto/ui/driving/ModRouteRenameLayout;


# direct methods
.method constructor <init>(Lcom/dji/auto/ui/driving/ModRouteRenameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/dji/auto/ui/driving/ModRouteRenameLayout$initClickListener$4;->this$0:Lcom/dji/auto/ui/driving/ModRouteRenameLayout;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/dji/auto/ui/driving/ModRouteRenameLayout$initClickListener$4;->this$0:Lcom/dji/auto/ui/driving/ModRouteRenameLayout;

    invoke-static {v0, p1}, Lcom/dji/auto/ui/driving/ModRouteRenameLayout;->access$changeConfirmBtnBackground(Lcom/dji/auto/ui/driving/ModRouteRenameLayout;Landroid/text/Editable;)V

    .line 140
    iget-object v0, p0, Lcom/dji/auto/ui/driving/ModRouteRenameLayout$initClickListener$4;->this$0:Lcom/dji/auto/ui/driving/ModRouteRenameLayout;

    invoke-static {v0, p1}, Lcom/dji/auto/ui/driving/ModRouteRenameLayout;->access$changeClearBtnVisibility(Lcom/dji/auto/ui/driving/ModRouteRenameLayout;Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
