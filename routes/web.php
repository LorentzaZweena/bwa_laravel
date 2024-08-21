<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::prefix('dashboard')->name('dashboard.')->group(function() {
        
    Route::middleware('can:apply job')->group(function(){
        Route::get('my-applications', [DashboardController::class, 'my_applications'])->name('my.applications');
        Route::get('my-applications/{job_candidate}', [DashboardController::class, 'my_application_details'])->name('my.applications.details');
        });
    });
});

require __DIR__.'/auth.php';
