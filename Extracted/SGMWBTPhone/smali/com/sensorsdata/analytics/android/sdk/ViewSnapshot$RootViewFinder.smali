.class Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootViewFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

.field private final mClientDensity:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mLiveActivities:Lcom/sensorsdata/analytics/android/sdk/UIThreadSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sensorsdata/analytics/android/sdk/UIThreadSet<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa0

    .line 433
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mClientDensity:I

    .line 438
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    .line 440
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    return-void
.end method

.method private scaleBitmap(Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;Landroid/graphics/Bitmap;)V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 502
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x43200000    # 160.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 506
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 507
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 508
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 509
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-double v7, v4

    add-double/2addr v7, v5

    double-to-int v4, v7

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    if-lez v3, :cond_1

    if-lez v4, :cond_1

    .line 511
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    const/16 v2, 0xa0

    invoke-virtual {v1, v3, v4, v2, p2}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;->recreate(IIILandroid/graphics/Bitmap;)V

    .line 514
    :cond_1
    iput v0, p1, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;->scale:F

    .line 515
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    iput-object p2, p1, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;->screenshot:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    return-void
.end method

.method private takeScreenshot(Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;)V
    .locals 4

    .line 470
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;->rootView:Landroid/view/View;

    .line 474
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 475
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 476
    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 477
    invoke-direct {p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->scaleBitmap(Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t take a bitmap snapshot of view "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping for now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA.Snapshot"

    invoke-static {v1, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 450
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mLiveActivities:Lcom/sensorsdata/analytics/android/sdk/UIThreadSet;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/UIThreadSet;->getAll()Ljava/util/Set;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 452
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 458
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;

    invoke-direct {v1, v3, v2}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;-><init>(Ljava/lang/String;Landroid/view/View;)V

    .line 459
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 463
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;

    .line 464
    invoke-direct {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->takeScreenshot(Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    return-object v0
.end method

.method public findInActivities(Lcom/sensorsdata/analytics/android/sdk/UIThreadSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sensorsdata/analytics/android/sdk/UIThreadSet<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mLiveActivities:Lcom/sensorsdata/analytics/android/sdk/UIThreadSet;

    return-void
.end method
