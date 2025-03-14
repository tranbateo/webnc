<div class="form-group">
    <label for="parent_id">Chọn cấp phân loại</label>
    <select name="parent_id" id="parent_id" class="form-control" style="color:darkcyan">
        <option value="0" @if(isset($category['parent_id']) && $category['parent_id']==0) selected="" @endif>Phân loại chính</option>
        @if(!empty($getCategories))
            @foreach($getCategories as $parentcategory)
                <option value="{{ $parentcategory['id'] }}" @if(isset($category['parent_id']) && $category['parent_id']==$parentcategory['id']) selected="" @endif>{{ $parentcategory['category_name'] }}</option>
                @if(!empty($parentcategory['subcategories']))
                    @foreach($parentcategory['subcategories'] as $subcategory)
                        <option value="{{ $subcategory['id'] }}" @if(isset($subcategory['parent_id']) && $subcategory['parent_id']==$subcategory['id']) selected="" @endif>&nbsp;&raquo;&nbsp;{{ $subcategory['category_name'] }}</option>
                    @endforeach
                @endif
            @endforeach
        @endif
    </select>
</div>
