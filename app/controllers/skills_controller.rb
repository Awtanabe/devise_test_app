class SkillsController < ApplicationController
  def new
  end

  def create
    @skill = Skill.new(skill_params)
    binding.pry
    @skill.save!
    redirect_to root_path
  end

  def skill_params
    params.require(:skill).permit(:name).merge(user_id: current_user.id)
  end
end
