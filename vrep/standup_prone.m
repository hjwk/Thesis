%function instructions = standup_prone(h, i, hips, knees, feet, shoulders, arms, elbows)

% if i > length(hips)
%     instructions(1, :) = [double(h.right_leg_joints(2)), hips(end)];
%     return;
% end
% 
% instructions(1,:) = [double(h.right_leg_joints(3)), hips(i)];
% instructions(2,:) = [double(h.left_leg_joints(3)), hips(i)];
% 
% instructions(3,:) = [double(h.right_leg_joints(4)), knees(i)];
% instructions(4,:) = [double(h.left_leg_joints(4)), knees(i)];
% 
% instructions(5,:) = [double(h.right_leg_joints(5)), feet(i)];
% instructions(6,:) = [double(h.left_leg_joints(5)), feet(i)];
% 
% instructions(7,:) = [double(h.right_arm_joints(1)), shoulders(i)];
% instructions(8,:) = [double(h.left_arm_joints(1)), shoulders(i)];
% 
% instructions(9,:) = [double(h.right_arm_joints(2)), arms(i)];
% instructions(10,:) = [double(h.left_arm_joints(2)), -arms(i)];
% 
% instructions(11,:) = [double(h.right_arm_joints(3)), elbows(i)];
% instructions(12,:) = [double(h.left_arm_joints(3)), -elbows(i)];
% 
% end

function instructions = standup_prone(h, t)

if t < 0.7
    % Phase 1 Lift the trunk;
    %hips
    instructions(1,:) = [double(h.right_leg_joints(3)), degtorad(30)];
    instructions(2,:) = [double(h.left_leg_joints(3)), degtorad(30)];
    
    % feet
    instructions(3,:) = [double(h.right_leg_joints(5)), degtorad(-75)];
    instructions(4,:) = [double(h.left_leg_joints(5)), degtorad(-75)];
    
    instructions(5,:) = [double(h.right_arm_joints(1)), degtorad(-90)];
    instructions(6,:) = [double(h.left_arm_joints(1)), degtorad(-90)];
    
    instructions(7,:) = [double(h.right_arm_joints(2)), degtorad(90)];
    instructions(8,:) = [double(h.left_arm_joints(2)), degtorad(-90)];
elseif t < 1.4
    % Phase 2 Faire le dos rond
    instructions(1,:) = [double(h.right_leg_joints(3)), degtorad(-40)];
    instructions(2,:) = [double(h.left_leg_joints(3)), degtorad(-40)];
    
    instructions(3,:) = [double(h.right_arm_joints(1)), degtorad(-100)];
    instructions(4,:) = [double(h.left_arm_joints(1)), degtorad(-100)];
    
    % Feet
    instructions(5,:) = [double(h.right_leg_joints(5)), degtorad(-40)];
    instructions(6,:) = [double(h.left_leg_joints(5)), degtorad(-40)];
elseif t < 2.5
    % Phase 3 Bring the knees in
    instructions(1,:) = [double(h.right_leg_joints(4)), degtorad(80)];
    instructions(2,:) = [double(h.left_leg_joints(4)), degtorad(80)];
    
    instructions(3,:) = [double(h.right_leg_joints(3)), degtorad(-140)];
    instructions(4,:) = [double(h.left_leg_joints(3)), degtorad(-140)];
    
    % Use arms to lift trunk up
    instructions(5,:) = [double(h.right_arm_joints(1)), degtorad(-75)];
    instructions(6,:) = [double(h.left_arm_joints(1)), degtorad(-75)];
    
    % Feet
    instructions(7,:) = [double(h.right_leg_joints(5)), degtorad(-14)];
    instructions(8,:) = [double(h.left_leg_joints(5)), degtorad(-14)];
  else
     % Phase 4 Stand up
     instructions(1,:) = [double(h.right_leg_joints(3)), degtorad(-110)];
     instructions(2,:) = [double(h.left_leg_joints(3)), degtorad(-110)];
%     
%     % Arms
%     instructions(3,:) = [double(h.right_arm_joints(1)), degtorad(-30)];
%     instructions(4,:) = [double(h.left_arm_joints(1)), degtorad(-30)];
%     
     % Knees
%      instructions(5,:) = [double(h.right_leg_joints(4)), degtorad(60)];
%      instructions(6,:) = [double(h.left_leg_joints(4)), degtorad(60)];
% %     
%      % Feet
%      instructions(7,:) = [double(h.right_leg_joints(5)), degtorad(-20)];
%      instructions(8,:) = [double(h.left_leg_joints(5)), degtorad(-20)];
 end
end