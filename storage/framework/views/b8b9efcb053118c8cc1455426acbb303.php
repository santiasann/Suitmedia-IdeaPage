
<?php $__env->startSection('title', 'Ideas'); ?>

<?php $__env->startSection('content'); ?>
<div class="row">
    <div class="col-12">
        <div class="banner parralax">
            <img src="<?php echo e(asset('img/'.$banner->image_path)); ?>" alt="banner" class="image-banner">
            <div class="banner-content">
                <h2><?php echo e($banner->title); ?></h2>
                <p><?php echo e($banner->desc); ?></p>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="sort-options">
        <select name="Sort By:" id="sort" onchange="fetchPost()">
            <option value="newest">Newest</option>
            <option value="oldest">Oldest</option>
        </select>
        <select name="Show per page" id="show-per-page" onchange="fetchPost()">
            <option value="10">10</option>
            <option value="20">20</option>
            <option value="50">50</option>
        </select>
    </div>
    <div class="card-container">
        <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="card-deck">
                <div class="card">
                    <img class="card-img-top" src="<?php echo e(asset('img/'.$post->image_path)); ?>" loading="lazy" alt="<?php echo e($post->title); ?>">
                    <div class="card-body">
                        <p class="card-text"><small class="text-muted"><?php echo e($post->created_at); ?></small></p>
                        <h5 class="card-title"><?php echo e($post->title); ?></h5>
                    </div>
                </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
    <div class="pagination justify-content-center">
        <?php echo e($posts->links()); ?>

    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp1\htdocs\suitmediaIntern\resources\views/idea.blade.php ENDPATH**/ ?>