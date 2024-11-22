<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Banner;
use App\Models\Post;

class IdeaController extends Controller
{
    //
    public function index(Request $request){
        $banner = Banner::latest()->first();
        $sort= $request->get('sort', 'newest');
        $perPage = $request->get('per_page', 10);
        $query = Post::query();
        $query->orderBy('created_at', $sort === 'oldest' ? 'asc' : 'desc');
        $posts=$query->paginate($perPage);
        return view('idea', compact('banner', 'posts'));
        return response()->json([
            'data' => $posts,
            'links' => $posts->links(),
        ]);
    }
}
