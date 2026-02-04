package Simple_List is
    type Node;
    -- This is an incomplete type declaration,
    -- which is completed in the same
    -- declarative region.

    type Node_Acc is access Node;

    type Node is record
        Content : Natural;
        Prev, Next : Node_Acc;
    end record;
end Simple_List;
